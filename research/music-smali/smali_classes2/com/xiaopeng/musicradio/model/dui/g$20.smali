.class Lcom/xiaopeng/musicradio/model/dui/g$20;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$20;->a:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 161
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->c()Laqs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Laqs;->b()V

    :cond_0
    return-void
.end method
