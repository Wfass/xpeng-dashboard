.class Lcd$a;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lbf;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Lcd;


# direct methods
.method public constructor <init>(Lcd;Lbf;Laf;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcd$a;->h:Lcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcd$a;->a:Ljava/lang/ref/WeakReference;

    .line 237
    iget-object p1, p2, Lbf;->A:Lbe;

    invoke-virtual {p3, p1}, Laf;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcd$a;->b:I

    .line 238
    iget-object p1, p2, Lbf;->B:Lbe;

    invoke-virtual {p3, p1}, Laf;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcd$a;->c:I

    .line 239
    iget-object p1, p2, Lbf;->C:Lbe;

    invoke-virtual {p3, p1}, Laf;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcd$a;->d:I

    .line 240
    iget-object p1, p2, Lbf;->D:Lbe;

    invoke-virtual {p3, p1}, Laf;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcd$a;->e:I

    .line 241
    iget-object p1, p2, Lbf;->E:Lbe;

    invoke-virtual {p3, p1}, Laf;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcd$a;->f:I

    .line 242
    iput p4, p0, Lcd$a;->g:I

    return-void
.end method
