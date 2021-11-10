To add in node-services.nix

               TraceOptionSeverity  = [
                 {ns = ""; severity = "InfoF";}
                 {ns = "Cardano.Node.AcceptPolicy"; severity = "SilenceF";}
                 {ns = "Cardano.Node.ChainDB"; severity = "DebugF";}
               ];

                TraceOptionDetail = [
                  {ns = ""; detail = "DNormal";}
                  {ns = "Cardano.Node.BlockFetchClient"; detail = "DMinimal";}
               ];

               TraceOptionBackend = [
                 {ns = ""; backends = ["Stdout HumanFormatColoured"; "Forwarder"; "EKGBackend"];}
                 {ns = "Cardano.Node.ChainDB"; backends = ["Forwarder"];}
               ];
               TraceOptionForwarder = {filePath: "/tmp/forwarder.sock";};