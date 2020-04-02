if [ -f $HOME/.profile_custom ]; then
  source $HOME/.profile_custom
fi

export MSBuildSDKsPath="/usr/share/dotnet/sdk/$(dotnet --version)/Sdks/"
