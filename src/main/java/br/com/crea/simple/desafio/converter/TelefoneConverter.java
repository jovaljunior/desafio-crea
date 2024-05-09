package br.com.crea.simple.desafio.converter;

import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.convert.Converter;
import jakarta.faces.convert.FacesConverter;

@FacesConverter("telefoneConverter")
public class TelefoneConverter implements Converter<Object>{

    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.isEmpty()) {
            return null;
        }
        value = value.replace("-", "")
                    .replace("(", "")
                    .replace(")", "");
        return value;
    }

    @Override
    public String getAsString(FacesContext context, UIComponent component, Object object) {
        final String value = (String) object;
        if (value == null || value.length() != 11) {
            return null;
        }
        return "(" + value.substring(0, 2) + ")"
                + value.substring(2, 7) + "-"
                + value.substring(7);
        }


}
