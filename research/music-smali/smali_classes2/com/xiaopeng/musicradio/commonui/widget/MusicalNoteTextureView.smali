.class public Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;
.super Landroid/view/TextureView;
.source "MusicalNoteTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->i:Z

    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->i:Z

    .line 52
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Laqv$g;->MusicalNoteTextureView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    sget v0, Laqv$g;->MusicalNoteTextureView_note_count:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->d:I

    .line 60
    sget v0, Laqv$g;->MusicalNoteTextureView_note_width:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->b:I

    .line 61
    sget v0, Laqv$g;->MusicalNoteTextureView_note_height:I

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->c:I

    .line 62
    sget v0, Laqv$g;->MusicalNoteTextureView_note_color:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laqv$b;->color_forward_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->e:I

    .line 63
    sget v0, Laqv$g;->MusicalNoteTextureView_note_padding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->f:I

    .line 65
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->b:I

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->f:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->d:I

    mul-int/2addr v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->g:I

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    :cond_0
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setOpaque(Z)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->j:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->j:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->j:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->j:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$1;)V

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->g:I

    .line 162
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->e(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->h:I

    .line 163
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->f(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->d:I

    .line 164
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->a(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->b:I

    .line 165
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->b(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->c:I

    .line 166
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->c(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->f:I

    .line 167
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->d(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->e:I

    .line 168
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->g(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->j:Landroid/view/Surface;

    .line 169
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a$a;->a(Landroid/view/Surface;)Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->i:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a(Z)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 177
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->b(Z)V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->i:Z

    .line 154
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 75
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 81
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 85
    iget p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->g:I

    iget p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->c:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 87
    iget p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->g:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 89
    iget p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->c:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setMeasuredDimension(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable ========== height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicalNoteTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->g:I

    .line 97
    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->h:I

    .line 98
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->j:Landroid/view/Surface;

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->c()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "MusicalNoteTextureView"

    const-string v0, "onSurfaceTextureDestroyed =========="

    .line 117
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->d()V

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->b()V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "MusicalNoteTextureView"

    const-string v1, "onSurfaceTextureSizeChanged: ========"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->g:I

    .line 106
    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->h:I

    .line 107
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->j:Landroid/view/Surface;

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->j:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a(Landroid/view/Surface;)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView$a;->a(II)V

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->a()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 138
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged: ========== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicalNoteTextureView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->c()V

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->d()V

    :goto_0
    return-void
.end method
