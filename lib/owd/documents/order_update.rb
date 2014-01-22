module OWD
  class OrderUpdate < Document
    def _build opts = {}
      doc.tag!(self.owd_name, {clientOrderId: opts[:clientOrderId]})  do
        opts.delete(:clientOrderId)
        opts.each do |k,v|
          doc.tag!(k, v)
        end
      end
    end
  end
end
