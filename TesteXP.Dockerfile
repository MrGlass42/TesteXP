FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine as builder

WORKDIR /build

COPY ["src/TesteXP.Api", "TesteXP.Api"]
COPY ["src/TesteXP.Usuarios.Application", "TesteXP.Usuarios.Application"]
COPY ["src/TesteXP.ProdutosFinanceiros.Application", "TesteXP.ProdutosFinanceiros.Application"]
COPY ["src/TesteXP.Infra", "TesteXP.Infra"]

RUN dotnet restore "TesteXP.Api/TesteXP.Api.csproj"
RUN dotnet build "TesteXP.Api/TesteXP.Api.csproj" -c Release --no-restore
RUN dotnet publish "TesteXP.Api/TesteXP.Api.csproj" -c Release -o publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine as app

WORKDIR /app/teste_xp

COPY --from=builder /build/publish .

EXPOSE 80

ENTRYPOINT ["dotnet", "TesteXP.Api.dll"]