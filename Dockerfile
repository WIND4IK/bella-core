FROM mcr.microsoft.com/dotnet/sdk:6.0 as build-env
WORKDIR ./
EXPOSE 3333
ENV ASPNETCORE_URLS=http://*:3333

COPY . ./
ENTRYPOINT ["dotnet", "BellaDomain.dll"]