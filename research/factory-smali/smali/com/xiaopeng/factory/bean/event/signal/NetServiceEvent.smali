.class public Lcom/xiaopeng/factory/bean/event/signal/NetServiceEvent;
.super Ljava/lang/Object;
.source "NetServiceEvent.java"


# instance fields
.field private mNetService:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "netService"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/event/signal/NetServiceEvent;->mNetService:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getNetService()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/event/signal/NetServiceEvent;->mNetService:Ljava/lang/String;

    return-object v0
.end method
