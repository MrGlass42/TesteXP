FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine as builder

WORKDIR /build

COPY ["src/RW_Email.Api", "RW_Email.Api"]
COPY ["src/RW_Email.Application", "RW_Email.Application"]

COPY templates templates

RUN dotnet restore "RW_Email.Api/RW_Email.Api.csproj"
RUN dotnet build "RW_Email.Api/RW_Email.Api.csproj" -c Release --no-restore
RUN dotnet publish "RW_Email.Api/RW_Email.Api.csproj" -c Release -o publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine as app

WORKDIR /app/teste_xp

COPY --from=builder /build/publish .
COPY --from=builder /build/templates /templates

EXPOSE 80

ENTRYPOINT ["dotnet", "TRW_Email.Api.dll"]