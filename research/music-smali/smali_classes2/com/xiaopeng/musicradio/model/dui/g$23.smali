.class Lcom/xiaopeng/musicradio/model/dui/g$23;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$23;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/dui/g$23;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/model/dui/g$23;->a:I

    invoke-interface {v0, v1}, Laqt;->a(I)V

    return-void
.end method
