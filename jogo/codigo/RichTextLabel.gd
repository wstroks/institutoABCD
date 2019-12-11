extends RichTextLabel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var a= 1

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var page=0
var dialogo=["Oi, seja bem vindo! Me chamo João e estou aqui para apresentar o curso Entendendo a Dislexia. Esse curso é ofericido pelo Instituto ABCD e a Associação Britânica de Dislexia (British Dyslexia Association – BDA).","Com essa parceria desenvolveram um curso livre gratuito para apresentar a dislexia a todos interessados em aprender sobre ela.","Com esse curso, você saberá: o que é a dislexia, as principais teorias sobre as suas causas, como identificá-la, quais são os direitos de pessoas com dislexia e muito mais!","Essa versão é uma gamificação do curso, para tornar mais atrativo o jogo. Então, vamos nos divertir e aprender juntos?!"]
func _ready():
	set_bbcode(dialogo[page])
	
	
	
	set_visible_characters(0)
	set_process_input(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		if get_visible_characters() > get_total_character_count():
			if page < dialogo.size()-1:
				page+=1
				print(page)
				if(page==3):
					get_parent().get_node("seguir").show()
				set_bbcode(dialogo[page])
				set_visible_characters(0)
		else:
			set_visible_characters(get_total_character_count())

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
	pass # Replace with function body.

func _on_seguir_pressed():
	pass # Replace with function body.
