.class Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;
.super Ljava/lang/Object;
.source "WithNapaWindowHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogInfo"
.end annotation


# static fields
.field public static final NAPA_DIALOG_INVALID_ID:I = -0x2

.field public static final NAPA_DIALOG_NOT_CANCELABLE:I = 0xa


# instance fields
.field public height:I

.field public id:I

.field public mode:I

.field public packageName:Ljava/lang/String;

.field public state:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;

.field public type:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method


# virtual methods
.method public set(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 114
    const-string v0, "id"

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->id:I

    .line 115
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->type:I

    .line 116
    const-string v0, "mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->mode:I

    .line 117
    const-string v0, "state"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->state:I

    .line 118
    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->x:I

    .line 119
    const-string/jumbo v0, "y"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->y:I

    .line 120
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->width:I

    .line 121
    const-string v0, "height"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->height:I

    .line 122
    const-string v0, "packageName"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->packageName:Ljava/lang/String;

    .line 123
    return-void
.end method
