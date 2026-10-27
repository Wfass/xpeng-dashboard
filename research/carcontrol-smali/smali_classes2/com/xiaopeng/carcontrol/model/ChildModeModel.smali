.class public Lcom/xiaopeng/carcontrol/model/ChildModeModel;
.super Ljava/lang/Object;
.source "ChildModeModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/model/ChildModeModel$LazyHolder;
    }
.end annotation


# static fields
.field private static final CHILD_MODE_OPENED:Ljava/lang/String; = "child_mode_opened"

.field private static final CHILD_MODE_SP_NAME:Ljava/lang/String; = "child_mode"


# instance fields
.field private final mSp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "child_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/model/ChildModeModel;->mSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/model/ChildModeModel$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/model/ChildModeModel;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/model/ChildModeModel;
    .locals 1

    .line 18
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/ChildModeModel$LazyHolder;->access$100()Lcom/xiaopeng/carcontrol/model/ChildModeModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isChildModeOpened()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/ChildModeModel;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "child_mode_opened"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setChildModeOpened()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/ChildModeModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "child_mode_opened"

    const/4 v2, 0x1

    .line 33
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
