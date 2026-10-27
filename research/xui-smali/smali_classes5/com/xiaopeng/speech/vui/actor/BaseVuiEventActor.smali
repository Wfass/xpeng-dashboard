.class public abstract Lcom/xiaopeng/speech/vui/actor/BaseVuiEventActor;
.super Ljava/lang/Object;
.source "BaseVuiEventActor.java"

# interfaces
.implements Lcom/xiaopeng/speech/vui/actor/IVuiEventActor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/actor/BaseVuiEventActor;->execute()V

    .line 18
    return-void
.end method
