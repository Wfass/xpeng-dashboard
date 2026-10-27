.class Laku$1;
.super Ljava/lang/Object;
.source "TooltipDrawable.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laku;


# direct methods
.method constructor <init>(Laku;)V
    .locals 0

    .line 80
    iput-object p1, p0, Laku$1;->a:Laku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 92
    iget-object p2, p0, Laku$1;->a:Laku;

    invoke-static {p2, p1}, Laku;->a(Laku;Landroid/view/View;)V

    return-void
.end method
