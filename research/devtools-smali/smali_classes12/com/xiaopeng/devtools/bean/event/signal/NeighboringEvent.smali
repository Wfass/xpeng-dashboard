.class public Lcom/xiaopeng/devtools/bean/event/signal/NeighboringEvent;
.super Ljava/lang/Object;
.source "NeighboringEvent.java"


# instance fields
.field private neighboringCellInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/event/signal/NeighboringEvent;->neighboringCellInfo:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getNeighboringCellInfo()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/event/signal/NeighboringEvent;->neighboringCellInfo:Ljava/lang/String;

    return-object v0
.end method
