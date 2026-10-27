.class Lcom/xiaopeng/musicradio/model/dui/e$8$1;
.super Laxz;
.source "DuiMusicMediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/e$8;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e$8;Ljava/lang/String;I)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$8$1;->a:Lcom/xiaopeng/musicradio/model/dui/e$8;

    invoke-direct {p0, p2, p3}, Laxz;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public J()I
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/e$8$1;->a:Lcom/xiaopeng/musicradio/model/dui/e$8;

    iget v1, v1, Lcom/xiaopeng/musicradio/model/dui/e$8;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FindMusicMediaSource"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$8$1;->a:Lcom/xiaopeng/musicradio/model/dui/e$8;

    iget v0, v0, Lcom/xiaopeng/musicradio/model/dui/e$8;->a:I

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
