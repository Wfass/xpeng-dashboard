.class public final Lgs;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# instance fields
.field private final a:I

.field private final b:Lgu;

.field private final c:I


# direct methods
.method public constructor <init>(ILgu;I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 56
    iput p1, p0, Lgs;->a:I

    .line 57
    iput-object p2, p0, Lgs;->b:Lgu;

    .line 58
    iput p3, p0, Lgs;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget v0, p0, Lgs;->a:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lgs;->b:Lgu;

    iget v1, p0, Lgs;->c:I

    invoke-virtual {v0, v1, p1}, Lgu;->a(ILandroid/os/Bundle;)Z

    return-void
.end method
