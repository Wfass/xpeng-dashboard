.class public Lgu$d;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput-object p1, p0, Lgu$d;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IFFF)Lgu$d;
    .locals 2

    .line 1041
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1042
    new-instance v0, Lgu$d;

    .line 1043
    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lgu$d;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1045
    :cond_0
    new-instance p0, Lgu$d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgu$d;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
