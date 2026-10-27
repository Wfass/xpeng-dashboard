.class Lcom/xiaopeng/musicradio/web/ProtocolLayout$3;
.super Ljava/lang/Object;
.source "ProtocolLayout.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/web/ProtocolLayout;->setupTimeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$3;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 342
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$3;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$700(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 339
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout$3;->a(Ljava/lang/Long;)V

    return-void
.end method
