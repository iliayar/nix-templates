{
  description = "My flake templates";

  outputs = { self, ... }: {
    templates = {
      basic = {
        path = ./basic;
        description = "Basic empty flake";
      };
    };
  };
}
