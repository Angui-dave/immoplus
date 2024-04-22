import 'package:get/get.dart';
import 'package:immoplus/domain/entities/house.dart';

class HomeController extends GetxController {
  final House house;
  List<House> houseList = [
    House(
        image: 'images/splash.jpg',
        title: 'Villa Oasis Éternelle',
        description: ' Une symphonie architecturale où l\'opulence rencontre l\'élégance, offrant une vue panoramique sur les cimes enneigées des montagnes et les eaux scintillantes d\'un lac privé.'),
    House(
        image: 'images/img1.jpg',
        title: 'Palais du Soleil Couchant',
        description: 'Niché sur une falaise surplombant l\'océan, chaque crépuscule peint un tableau de couleurs surréalistes à travers les vastes fenêtres de ce palais moderne.'),
    House(
        image: 'images/img2.jpg',
        title: 'Château de Lumière',
        description: 'Un trésor médiéval réimaginé avec des touches contemporaines, où les lustres en cristal baignent chaque pièce de lumière, dansant sur les fresques murales centenaires.'),
    House(
        image: 'images/splash.jpg',
        title: 'Château des Merveilles Enchantées',
        description: 'Un château romantique au cœur d\'une forêt enchantée, où les sentiers sinueux mènent à des clairières secrètes et à un étang miroitant, invitant à des moments de contemplation et de rêverie.'),
    House(
        image: 'images/splash.jpg',
        title: 'Domaine de la Cascade Éternelle',
        description: 'Une propriété luxueuse où une cascade naturelle s\'écoule à travers les terrasses, créant une ambiance sonore apaisante qui fusionne avec le design contemporain de la maison.'),
    House(
        image: 'images/splash.jpg',
        title: 'Résidence des Vents Mystiques',
        description: 'Perchée au sommet d\'une falaise balayée par les vents, cette maison d\'architecte est conçue pour capturer les courants d\'air, offrant une fraîcheur naturelle et une vue imprenable sur l\'océan.'),
    House(
        image: 'images/splash.jpg',
        title: 'Manoir des Horizons Infinis',
        description: 'Situé au sommet d\'une colline, ce manoir offre des vues ininterrompues sur les vallées verdoyantes et les sommets enneigés, créant un sentiment d\'espace infini.'),
    House(
        image: 'images/splash.jpg',
        title: 'Penthouse Paradisiaque ',
        description: 'Un penthouse urbain où le ciel n\'est pas la limite, avec des terrasses en cascades offrant des jardins suspendus, des piscines scintillantes et une vue à couper le souffle sur la skyline.'),
    House(
        image: 'images/splash.jpg',
        title: 'Villa du Phoenix ',
        description: 'Une propriété majestueuse où l\'ancien rencontre le nouveau, avec des jardins de style méditerranéen parsemés de sculptures antiques, tout en offrant les technologies les plus avancées dissimulées sous ses murs de pierre.'),
    House(
        image: 'images/splash.jpg',
        title: 'Retraite Céleste au Lac',
        description: 'Une résidence intime nichée au bord d\'un lac tranquille, où les ponts en bois mènent à des cabanes d\'invités privées, créant un sanctuaire de paix et de détente.'),
    House(
        image: 'images/splash.jpg',
        title: 'Maison du Ciel Étoilé ',
        description: 'Un chef-d\'œuvre d\'ingénierie contemporaine avec un toit rétractable, transformant la salle de séjour en un observatoire privé pour contempler les étoiles à loisir.'),
    House(
        image: 'images/splash.jpg',
        title: 'Château des Mille Secrets ',
        description: 'Une propriété historique aux jardins secrets, aux passages dérobés et aux salles cachées, rappelant les intrigues et les mystères des cours royales d\'autrefois.'),
  ];

  HomeController({required this.house});
}
