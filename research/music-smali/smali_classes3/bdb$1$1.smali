.class Lbdb$1$1;
.super Ljava/lang/Object;
.source "RadioDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdb$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic b:Lbdb$1;


# direct methods
.method constructor <init>(Lbdb$1;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lbdb$1$1;->b:Lbdb$1;

    iput-object p2, p0, Lbdb$1$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 87
    iget-object v0, p0, Lbdb$1$1;->b:Lbdb$1;

    iget-object v0, v0, Lbdb$1;->a:Lbdb$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdb$1$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lbdb$1$1;->b:Lbdb$1;

    iget-object v0, v0, Lbdb$1;->b:Lbdb;

    iget-object v1, p0, Lbdb$1$1;->b:Lbdb$1;

    iget-object v1, v1, Lbdb$1;->a:Lbdb$a;

    iget-object v2, p0, Lbdb$1$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, v1, v2}, Lbdb;->a(Lbdb$a;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method
