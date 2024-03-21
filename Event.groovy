// Event.groovy
class Event {
    String title
    String description
    String date
    String address
    
    boolean valid() {
        // Implementa la lógica para validar el evento aquí
        return title && description && date && address
    }
}
