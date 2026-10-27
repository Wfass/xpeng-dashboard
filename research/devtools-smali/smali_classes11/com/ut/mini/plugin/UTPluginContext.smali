.class public Lcom/ut/mini/plugin/UTPluginContext;
.super Ljava/lang/Object;
.source "UTPluginContext.java"


# static fields
.field public static final DEBUG_LOG_SWITCH:I = 0x1


# instance fields
.field private U:Z

.field private V:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->mContext:Landroid/content/Context;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->U:Z

    .line 11
    iput-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->V:Z

    return-void
.end method


# virtual methods
.method public enableRealtimeDebug()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->V:Z

    .line 31
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isDebugLogEnable()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->U:Z

    return v0
.end method

.method public isRealtimeDebugEnable()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/ut/mini/plugin/UTPluginContext;->V:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPluginContext;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public setDebugLogFlag(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/ut/mini/plugin/UTPluginContext;->U:Z

    .line 23
    return-void
.end method
