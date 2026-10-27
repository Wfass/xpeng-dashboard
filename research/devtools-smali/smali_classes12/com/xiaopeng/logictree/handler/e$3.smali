.class Lcom/xiaopeng/logictree/handler/e$3;
.super Ljava/lang/Object;
.source "GpsInfo.java"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/logictree/handler/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yt:Lcom/xiaopeng/logictree/handler/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/logictree/handler/e;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e$3;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaMessage(Ljava/lang/String;J)V
    .locals 0

    .line 122
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/e$3;->Yt:Lcom/xiaopeng/logictree/handler/e;

    iget-object p2, p2, Lcom/xiaopeng/logictree/handler/e;->CLASS_NAME:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/e$3;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p2}, Lcom/xiaopeng/logictree/handler/e;->i(Lcom/xiaopeng/logictree/handler/e;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method
