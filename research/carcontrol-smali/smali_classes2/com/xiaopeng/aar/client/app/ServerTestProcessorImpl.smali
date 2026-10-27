.class public Lcom/xiaopeng/aar/client/app/ServerTestProcessorImpl;
.super Lcom/xiaopeng/aar/client/app/AppProcessorImpl;
.source "ServerTestProcessorImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onReceived(Lcom/xiaopeng/aar/client/ApiListener;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 7
    invoke-super/range {p0 .. p8}, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;->onReceived(Lcom/xiaopeng/aar/client/ApiListener;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public bridge synthetic onServerStatus(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;->onServerStatus(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;I)V

    return-void
.end method
