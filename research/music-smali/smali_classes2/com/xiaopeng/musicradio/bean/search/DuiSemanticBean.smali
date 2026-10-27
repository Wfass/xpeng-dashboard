.class public Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;
.super Ljava/lang/Object;
.source "DuiSemanticBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;
    }
.end annotation


# instance fields
.field private domain:Ljava/lang/String;

.field private intents:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->intents:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->domain:Ljava/lang/String;

    return-void
.end method

.method public setIntents(Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->intents:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    return-void
.end method
