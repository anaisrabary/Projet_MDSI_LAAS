# Projet_MDSI_LAAS
Projet 4IR S1 MDSI (UML/XML) 

## Rappel des commandes à utiliser

### Pour vérifier la validité d’un document :
```
> xmllint --noout doc.xml --schema XSD/schema.xsd
```
avec :
doc.xml : le document XML à tester
schema.xsd : le schéma qui sert à la validation


### Pour créer un fichier HTML par transformation d’un document XML :
```
> xsltproc -output page.html transform.xslt doc.xml
```
avec :
doc.xml : document XML à exploiter dans un affichage HTML
transform.xslt : document de transformation XSLT pour le document XML à exploiter
page.html : le document au format HTML créé pour un affichage des données


### Pour regrouper les différents documents xml : 
```
> xsltproc -output bdd.xml merge.xslt empty.xml
```
avec : 
empty.xml : un document xml “fake”, juste pour ne pas avoir d’erreur de la part du parseur XML
merge.xslt : document de tranformation XLST pour la fusion des documents XML
bdd.xml : le document XML créé, équivalent de toute la base de données


On peut tester chaque .xml de manière indépendante les uns des autres, au niveau de la syntaxe des documents par rapport aux.xsd, mais afin de tester la validité des références de clés, il faut tester la validité sur le document représentant la base de données entière bdd.xml

## Working
### clonner le projet :
```
git clone https://github.com/anaisrabary/Projet_MDSI_LAAS.git
```
## travailler
```
git pull
git add "nom_fichier" || git add .
git commit -m "hey I work this"
git push
```

## Si conflit
```
git pull
# conflit
git diff --name-only --diff-filter=U
# listing les fichiers en conflit
# régler les parties conflit selon ce conseil: https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/#competing-line-change-merge-conflicts
# fini
git add .
git commit -m "Merge conflict dans ces fichiers"
git push
```
