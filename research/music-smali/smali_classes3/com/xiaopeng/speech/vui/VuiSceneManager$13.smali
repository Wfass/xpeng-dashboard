.class Lcom/xiaopeng/speech/vui/VuiSceneManager$13;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$obj:Ljava/lang/Object;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;ILjava/lang/Object;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->val$type:I

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1148
    iget v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->val$type:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->val$obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1173
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    .line 1174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1175
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "display"

    invoke-static {v2, v0, v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->val$obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-eqz v0, :cond_4

    .line 1166
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1167
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1900(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->val$obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1158
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1160
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "update"

    invoke-static {v2, v0, v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->val$obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 1151
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1153
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$13;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "build"

    invoke-static {v2, v0, v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$1800(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
