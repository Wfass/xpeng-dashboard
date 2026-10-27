.class public Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel;
.super Ljava/lang/Object;
.source "FreeNgpUidResultModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel$LazyHolder;
    }
.end annotation


# static fields
.field private static final FREENGP_SP_NAME:Ljava/lang/String; = "freengp_uid"

.field private static final FREENGP_SP_NAME_UPDATED:Ljava/lang/String; = "freengp_exam_updated"


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

    const-string v1, "freengp_uid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel;->mSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel;
    .locals 1

    .line 18
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel$LazyHolder;->access$100()Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFreeNgpUidResult(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel;->mSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setFreeNgpUidResult(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "result"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/FreeNgpUidResultModel;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
