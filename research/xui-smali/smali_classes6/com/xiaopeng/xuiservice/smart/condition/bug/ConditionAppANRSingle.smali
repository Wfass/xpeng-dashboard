.class public Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;
.super Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;
.source "ConditionAppANRSingle.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "bug_app_anr_single"


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "window"    # J

    .line 12
    const-string v0, "bug_app_anr_single"

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;-><init>(Ljava/lang/String;IJ)V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;->packageName:Ljava/lang/String;

    .line 14
    if-eqz p1, :cond_0

    .line 17
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method protected matchBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)Z
    .locals 2
    .param p1, "bug"    # Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 25
    iget v0, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
