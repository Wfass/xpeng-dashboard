.class Lgv$c;
.super Lgv$b;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Lgv;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lgv$b;-><init>(Lgv;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lgv$c;->a:Lgv;

    .line 105
    invoke-static {p2}, Lgu;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lgu;

    move-result-object p2

    .line 104
    invoke-virtual {v0, p1, p2, p3, p4}, Lgv;->a(ILgu;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
