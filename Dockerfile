FROM mcr.microsoft.com/dotnet/sdk:6.0 as build-env
WORKDIR ./
EXPOSE 3333
ENV ASPNETCORE_URLS=http://*:3333

FROM mcr.microsoft.com/dotnet/aspnet:6.0 as runtime
WORKDIR ./
COPY --from=build-env ./ .
ENTRYPOINT ["dotnet", "BellaDomain.dll"]