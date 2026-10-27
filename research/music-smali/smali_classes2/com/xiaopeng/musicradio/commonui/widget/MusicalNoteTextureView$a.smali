.class Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;
.super Ljava/lang/Object;
.source "MusicalNoteTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/Surface;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Rect;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/Surface;Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->d:Z

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->j:Landroid/util/SparseArray;

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    .line 199
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Surface;Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;-><init>(Landroid/view/Surface;Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 256
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->d:Z

    if-nez v0, :cond_0

    .line 257
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;

    .line 260
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)V
    .locals 5

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->a(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)I

    move-result v1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->b(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->c:Landroid/graphics/Rect;

    .line 204
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->b:Landroid/graphics/Paint;

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->b:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->c(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->d(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->g:I

    .line 208
    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->e(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->f:I

    .line 209
    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->f(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->e:I

    .line 210
    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->g(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->h:I

    .line 212
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->e:I

    if-ge v3, v0, :cond_0

    .line 213
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$1;)V

    .line 214
    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->f:I

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->h:I

    add-int/2addr v2, v1

    mul-int/2addr v2, v3

    iget v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->g:I

    invoke-virtual {v0, v2, v1, v4}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->a(III)V

    .line 215
    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->b(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->a(I)V

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->c:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->j:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$b;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->d:Z

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 237
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->d:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a(Landroid/graphics/Canvas;)V

    :cond_1
    const-wide/16 v1, 0x53

    .line 244
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 251
    :cond_2
    throw v1

    :catch_0
    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    return-void
.end method
