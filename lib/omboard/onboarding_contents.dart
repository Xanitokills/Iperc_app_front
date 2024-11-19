class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Autenticación Sencilla y Segura",
    image: "assets/computacion3.png",
    desc:
        "Accede al Sistema de Gestión de Forzado con tu usuario y contraseña para comenzar a gestionar tus solicitudes",
  ),
  OnboardingContents(
    title: "Gestión de Solicitudes",
    image: "assets/reportes1.png",
    desc:
        "Registra y controla tus solicitudes de alta o baja de maquinarias de manera rápida y sencilla.",
  ),
  OnboardingContents(
    title: "Consulta y Estadísticas",
    image: "assets/consulta2.png",
    desc:
        "Consulta el estado de tus solicitudes y visualiza estadísticas para tomar decisiones informadas",
  ),
];
