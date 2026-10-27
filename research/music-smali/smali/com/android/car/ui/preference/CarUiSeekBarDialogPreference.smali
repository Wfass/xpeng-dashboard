.class public Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;
.super Landroidx/preference/DialogPreference;
.source "CarUiSeekBarDialogPreference.java"

# interfaces
.implements Lcom/android/car/ui/preference/a;
.implements Lcom/android/car/ui/preference/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/SeekBar;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private m:I

.field private n:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 61
    iput p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->m:I

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->o:Z

    .line 79
    invoke-direct {p0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    .line 88
    sget v0, Lcom/android/car/ui/e$g;->car_ui_seekbar_dialog:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->c(I)V

    .line 89
    sget v0, Lcom/android/car/ui/e$h;->car_ui_dialog_preference_positive:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a(I)V

    .line 90
    sget v0, Lcom/android/car/ui/e$h;->car_ui_dialog_preference_negative:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b(I)V

    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->n:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-super {p0}, Landroidx/preference/DialogPreference;->P()V

    :cond_2
    :goto_0
    return-void
.end method

.method public U()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroidx/preference/DialogPreference;->U()V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->j(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    return-void
.end method

.method public a(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public a(Landroidx/preference/g;)V
    .locals 1

    .line 283
    invoke-super {p0, p1}, Landroidx/preference/DialogPreference;->a(Landroidx/preference/g;)V

    .line 285
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->h()Z

    move-result v0

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 101
    sget v0, Lcom/android/car/ui/e$e;->seek_bar:I

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    .line 102
    sget v0, Lcom/android/car/ui/e$e;->seek_bar_text_top:I

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->d:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/android/car/ui/e$e;->seek_bar_text_left:I

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->g:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/android/car/ui/e$e;->seek_bar_text_right:I

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->j:Landroid/widget/TextView;

    .line 106
    iget p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->k(I)V

    .line 108
    iget p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->c:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->l(I)V

    .line 109
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a(Ljava/lang/String;)V

    .line 111
    iget p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->f:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->m(I)V

    .line 112
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b(Ljava/lang/String;)V

    .line 114
    iget p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->i:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->n(I)V

    .line 115
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->i(Ljava/lang/String;)V

    .line 117
    iget p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->m:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->o(I)V

    .line 118
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->h:Ljava/lang/String;

    return-void
.end method

.method public h()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->o:Z

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->k:Ljava/lang/String;

    return-void
.end method

.method public k(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    :cond_0
    iput p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    return-void
.end method

.method public k(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    .line 146
    iget p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->a:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->i(I)Z

    .line 147
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->i()V

    :cond_0
    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->d:Landroid/widget/TextView;

    .line 151
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->j:Landroid/widget/TextView;

    .line 152
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->g:Landroid/widget/TextView;

    .line 153
    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :cond_0
    iput p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->c:I

    return-void
.end method

.method public m(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :cond_0
    iput p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->f:I

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_0
    iput p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->i:I

    return-void
.end method

.method public o(I)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 278
    :cond_0
    iput p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->m:I

    return-void
.end method
