.class public Lcom/xiaopeng/lib/framework/configuration/internal/ConfigServiceConnectEvent;
.super Ljava/lang/Object;
.source "ConfigServiceConnectEvent.java"


# instance fields
.field mIsConnected:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/ConfigServiceConnectEvent;->mIsConnected:Z

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/ConfigServiceConnectEvent;->mIsConnected:Z

    return v0
.end method
