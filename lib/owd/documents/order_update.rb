module OWD
  class OrderUpdate < Document
    def _build opts = {}
       doc.tag!(self.owd_name, opts)
    end
  end
end
