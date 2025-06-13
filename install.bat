@ECHO OFF

echo.
echo                                                           ######################################
echo                                                          #                                      #
echo                                                          #   v           v  L       DDDDDDD     #
echo                                                          #    v         v   L       D      D    #
echo                                                          #     v       v    L       D      D    #
echo                                                          #      v     v     L       D      D    #
echo                                                          #       v   v      L       D      D    #
echo                                                          #        v v       L       D      D    #
echo                                                          #         v        LLLLLL  DDDDDDD     #
echo                                                          #                                      #
echo                                                          #            Delevi Corp               #
echo                                                           ######################################
echo.


echo Instalando o SafeSign

set escolha=
echo O Safesign Esta prestes a ser instalado, e o processo nao pode ser interrompido.
set /p escolha=Deseja continuar [S/N]?

IF /i NOT %escolha%==s (
echo.
echo Processo de instalacao cancelado!
exit /b 0
) ELSE (
echo Processo de instalacao iniciado.
)


cd Safesign Minidriver 4.0\x64

"SafeSign IC MiniDriver 4.0.0.0-AET.000 64-bits.msi"

cd "..\..\Safesign WHQL"

echo Instalando o Patch

"aetrocm1.inf" /install

echo SafeSign Instalado com Sucesso