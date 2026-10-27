.class Lcom/xiaopeng/musicradio/model/dui/e$6;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$6;->a:Lcom/xiaopeng/musicradio/model/dui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 769
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->c()Ljava/lang/String;

    move-result-object v0

    sget v1, Lbub$a;->personal_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 771
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/model/dui/e$6$1;

    const/16 v3, 0x32

    invoke-direct {v2, p0, v0, v3}, Lcom/xiaopeng/musicradio/model/dui/e$6$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/e$6;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;)V

    return-void
.end method
