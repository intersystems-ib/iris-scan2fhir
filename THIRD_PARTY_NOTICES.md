# Componentes de extracción documental

La aplicación utiliza `indra-ocr==1.1.2` y ONNX Runtime en CPU.

El código de Indra se publica bajo Apache-2.0. Los pesos del modelo tienen una licencia
OpenRAIL-M modificada, con sus condiciones propias:

- Código: https://github.com/datalab-to/indra
- Modelo y condiciones de uso: https://huggingface.co/datalab-to/indra-ocr
- Licencia de los pesos: https://huggingface.co/datalab-to/indra-ocr/blob/main/LICENSE

Las licencias de ONNX Runtime, OpenCV, pypdfium2 y demás dependencias se conservan
en sus paquetes instalados. Los modelos se almacenan en la caché local persistente.
Los documentos se procesan en IRIS y no se envían a un servicio externo de OCR.
