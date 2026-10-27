.class Lcom/android/car/ui/recyclerview/g$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CarUiListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lait;

.field final b:Lait;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/widget/ImageView;

.field final f:Landroid/view/ViewGroup;

.field final g:Landroid/view/ViewGroup;

.field final h:Landroid/view/View;

.field final i:Landroid/widget/Switch;

.field final j:Landroid/widget/CheckBox;

.field final k:Landroid/widget/RadioButton;

.field final l:Landroid/widget/ImageView;

.field final m:Landroid/view/View;

.field final n:Landroid/view/View;

.field final o:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 191
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_title:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lait;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->a:Lait;

    .line 193
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_body:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lait;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->b:Lait;

    .line 194
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_icon:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->c:Landroid/widget/ImageView;

    .line 195
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_content_icon:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->d:Landroid/widget/ImageView;

    .line 196
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_avatar_icon:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->e:Landroid/widget/ImageView;

    .line 197
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_icon_container:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->f:Landroid/view/ViewGroup;

    .line 198
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_action_container:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->g:Landroid/view/ViewGroup;

    .line 199
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_action_divider:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->h:Landroid/view/View;

    .line 200
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_switch_widget:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->i:Landroid/widget/Switch;

    .line 201
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_checkbox_widget:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->j:Landroid/widget/CheckBox;

    .line 202
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_radio_button_widget:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->k:Landroid/widget/RadioButton;

    .line 203
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_supplemental_icon:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->l:Landroid/widget/ImageView;

    .line 205
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_reduced_touch_interceptor:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    .line 207
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_touch_interceptor:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    .line 209
    sget v0, Lcom/android/car/ui/e$e;->car_ui_list_item_action_container_touch_interceptor:I

    invoke-static {p1, v0}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    return-void
.end method

.method private static synthetic a(Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    .line 399
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    if-eqz p1, :cond_0

    .line 401
    invoke-interface {p1, p2}, Lcom/android/car/ui/recyclerview/a$d;->a(Lcom/android/car/ui/recyclerview/a;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 351
    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/a$d;->a(Lcom/android/car/ui/recyclerview/a;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    .line 358
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/a;->k()Lcom/android/car/ui/recyclerview/a$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/a;->k()Lcom/android/car/ui/recyclerview/a$d;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/car/ui/recyclerview/a$d;->a(Lcom/android/car/ui/recyclerview/a;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/android/car/ui/recyclerview/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 393
    invoke-virtual {p0, p2}, Lcom/android/car/ui/recyclerview/a;->a(Z)V

    return-void
.end method

.method private static synthetic b(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 341
    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/a$d;->a(Lcom/android/car/ui/recyclerview/a;)V

    :cond_0
    return-void
.end method

.method private static synthetic c(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 320
    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/a$d;->a(Lcom/android/car/ui/recyclerview/a;)V

    :cond_0
    return-void
.end method

.method private static synthetic d(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 296
    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/a$d;->a(Lcom/android/car/ui/recyclerview/a;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$FoBS0KJmirp5v9c7n60cQrjYcmY(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/car/ui/recyclerview/g$b;->d(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$JUeRaZssDyBkmAEZyCDdJbBZBG8(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/car/ui/recyclerview/g$b;->b(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Q7U8_rzS6rdna4RBga0AjH2s8ZY(Lcom/android/car/ui/recyclerview/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/car/ui/recyclerview/g$b;->a(Lcom/android/car/ui/recyclerview/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$WqGUmKorDPmZvy2bzCZ2LSmuo2A(Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/g$b;->a(Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$c0j3OI3xg7A-RRZ7Jpjs44kplWs(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/car/ui/recyclerview/g$b;->c(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$inZWtyx2o7jjkpVm3obsQGdIvsY(Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/car/ui/recyclerview/g$b;->a(Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$usX38iLVQKMfPW0FJNfnMPERGnk(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/car/ui/recyclerview/g$b;->a(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Z)V
    .locals 2

    .line 376
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 377
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 378
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 380
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/car/ui/recyclerview/g$b;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/android/car/ui/recyclerview/a;)V
    .locals 7

    .line 214
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->a()Lcom/android/car/ui/b;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->a:Lait;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->a()Lcom/android/car/ui/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Lait;->setText(Lcom/android/car/ui/b;)V

    .line 216
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->a:Lait;

    invoke-virtual {v0, v2}, Lait;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->a:Lait;

    invoke-virtual {v0, v1}, Lait;->setVisibility(I)V

    .line 221
    :goto_0
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->b:Lait;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lait;->setText(Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->b:Lait;

    invoke-virtual {v0, v2}, Lait;->setVisibility(I)V

    goto :goto_1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->b:Lait;

    invoke-virtual {v0, v1}, Lait;->setVisibility(I)V

    .line 228
    :goto_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 234
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->f:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 236
    sget-object v4, Lcom/android/car/ui/recyclerview/g$1;->a:[I

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->d()Lcom/android/car/ui/recyclerview/a$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/car/ui/recyclerview/a$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 246
    :cond_2
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto :goto_2

    .line 242
    :cond_3
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 238
    :cond_4
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    :goto_2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    instance-of v4, v0, Lcom/android/car/ui/SecureView;

    if-eqz v4, :cond_6

    .line 257
    check-cast v0, Lcom/android/car/ui/SecureView;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->m()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/car/ui/SecureView;->setSecure(Z)V

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v3

    .line 262
    :goto_3
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    instance-of v5, v4, Lcom/android/car/ui/SecureView;

    if-eqz v5, :cond_7

    .line 263
    check-cast v4, Lcom/android/car/ui/SecureView;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->m()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/car/ui/SecureView;->setSecure(Z)V

    goto :goto_4

    :cond_7
    move v0, v3

    .line 268
    :goto_4
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    instance-of v5, v4, Lcom/android/car/ui/SecureView;

    if-eqz v5, :cond_8

    .line 269
    check-cast v4, Lcom/android/car/ui/SecureView;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->m()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/car/ui/SecureView;->setSecure(Z)V

    goto :goto_5

    :cond_8
    move v0, v3

    :goto_5
    if-eqz v0, :cond_9

    const-string v0, "carui"

    const-string v4, "List item doesn\'t have a SecureView, but security was requested!"

    .line 275
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_9
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->h:Landroid/view/View;

    .line 279
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->h()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_6

    :cond_a
    move v4, v1

    .line 278
    :goto_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->i:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->k:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->l()Lcom/android/car/ui/recyclerview/a$d;

    move-result-object v0

    .line 287
    sget-object v4, Lcom/android/car/ui/recyclerview/g$1;->b:[I

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->i()Lcom/android/car/ui/recyclerview/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/car/ui/recyclerview/a$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 368
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown secondary action type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :pswitch_0
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->l:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 337
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->k()Lcom/android/car/ui/recyclerview/a$d;

    move-result-object v4

    if-nez v4, :cond_c

    .line 338
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    new-instance v5, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$JUeRaZssDyBkmAEZyCDdJbBZBG8;

    invoke-direct {v5, v0, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$JUeRaZssDyBkmAEZyCDdJbBZBG8;-><init>(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    if-eqz v0, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 348
    :cond_c
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    new-instance v5, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$usX38iLVQKMfPW0FJNfnMPERGnk;

    invoke-direct {v5, v0, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$usX38iLVQKMfPW0FJNfnMPERGnk;-><init>(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_7

    :cond_d
    move v0, v2

    :goto_7
    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    new-instance v4, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$inZWtyx2o7jjkpVm3obsQGdIvsY;

    invoke-direct {v4, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$inZWtyx2o7jjkpVm3obsQGdIvsY;-><init>(Lcom/android/car/ui/recyclerview/a;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    .line 363
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->k()Lcom/android/car/ui/recyclerview/a$d;

    move-result-object v4

    if-eqz v4, :cond_e

    move v2, v3

    .line 362
    :cond_e
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 313
    :pswitch_1
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->l:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->l:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/car/ui/recyclerview/g$b;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/car/ui/e$d;->car_ui_preference_icon_chevron:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 317
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    new-instance v5, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$c0j3OI3xg7A-RRZ7Jpjs44kplWs;

    invoke-direct {v5, v0, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$c0j3OI3xg7A-RRZ7Jpjs44kplWs;-><init>(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    if-eqz v0, :cond_f

    move v2, v3

    :cond_f
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 310
    :pswitch_2
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/g$b;->k:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/car/ui/recyclerview/g$b;->a(Lcom/android/car/ui/recyclerview/a;Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/a$d;)V

    goto :goto_8

    .line 307
    :pswitch_3
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/g$b;->j:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/car/ui/recyclerview/g$b;->a(Lcom/android/car/ui/recyclerview/a;Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/a$d;)V

    goto :goto_8

    .line 304
    :pswitch_4
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/g$b;->i:Landroid/widget/Switch;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/car/ui/recyclerview/g$b;->a(Lcom/android/car/ui/recyclerview/a;Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/a$d;)V

    goto :goto_8

    .line 289
    :pswitch_5
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 293
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    new-instance v5, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$FoBS0KJmirp5v9c7n60cQrjYcmY;

    invoke-direct {v5, v0, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$FoBS0KJmirp5v9c7n60cQrjYcmY;-><init>(Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    if-eqz v0, :cond_10

    move v2, v3

    :cond_10
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :goto_8
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/g$b;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->f()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/car/ui/recyclerview/g$b;->a(Landroid/view/View;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/android/car/ui/recyclerview/a;Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/a$d;)V
    .locals 3

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    const/4 v1, 0x0

    .line 390
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 391
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/a;->g()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 392
    new-instance v1, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$Q7U8_rzS6rdna4RBga0AjH2s8ZY;

    invoke-direct {v1, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$Q7U8_rzS6rdna4RBga0AjH2s8ZY;-><init>(Lcom/android/car/ui/recyclerview/a;)V

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 397
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    new-instance v2, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$WqGUmKorDPmZvy2bzCZ2LSmuo2A;

    invoke-direct {v2, p2, p3, p1}, Lcom/android/car/ui/recyclerview/-$$Lambda$g$b$WqGUmKorDPmZvy2bzCZ2LSmuo2A;-><init>(Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/a$d;Lcom/android/car/ui/recyclerview/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/g$b;->m:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 406
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/g$b;->n:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/g$b;->o:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/g$b;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/g$b;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method
