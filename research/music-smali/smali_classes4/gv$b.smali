.class Lgv$b;
.super Lgv$a;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lgv;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lgv$a;-><init>(Lgv;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 86
    iget-object v0, p0, Lgv$b;->a:Lgv;

    invoke-virtual {v0, p1}, Lgv;->b(I)Lgu;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p1}, Lgu;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
