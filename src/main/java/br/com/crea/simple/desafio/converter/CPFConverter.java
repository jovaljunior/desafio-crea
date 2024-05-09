package br.com.crea.simple.desafio.converter;

import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.convert.Converter;
import jakarta.faces.convert.FacesConverter;

@FacesConverter("cpfConverter")
public class CPFConverter implements Converter<Object>{

    @Override
    public String getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.isEmpty()) {
            return null;
        }
        value = value.replace(".", "")
                    .replace("-", "");
        return value;
    }

    @Override
    public String getAsString(FacesContext context, UIComponent component, Object object) {
        final String value = (String) object;
        if (value == null || value.length() != 11) {
            return null;
        }
        return value.substring(0, 3) + "."
                + value.substring(3, 6) + "."
                + value.substring(6, 9) + "-"
                + value.substring(9);
    }


}
