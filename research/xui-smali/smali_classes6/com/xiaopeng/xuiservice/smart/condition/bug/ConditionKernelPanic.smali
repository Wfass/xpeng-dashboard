.class public Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionKernelPanic;
.super Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;
.source "ConditionKernelPanic.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "bug_kernel_panic"


# direct methods
.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "window"    # J

    .line 10
    const-string v0, "bug_kernel_panic"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;-><init>(Ljava/lang/String;IJ)V

    .line 11
    return-void
.end method


# virtual methods
.method protected matchBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)Z
    .locals 2
    .param p1, "bug"    # Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 15
    iget v0, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
