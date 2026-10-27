.class public Lcom/android/car/media/common/d;
.super Ljava/lang/Object;
.source "PlaybackErrorViewController.java"


# instance fields
.field private final a:Lcom/android/car/apps/common/UxrTextView;

.field private final b:Lcom/android/car/apps/common/UxrButton;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget v0, Lcom/android/car/media/common/f$f;->error_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/car/apps/common/UxrTextView;

    iput-object v0, p0, Lcom/android/car/media/common/d;->a:Lcom/android/car/apps/common/UxrTextView;

    .line 47
    sget v0, Lcom/android/car/media/common/f$f;->error_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/car/apps/common/UxrButton;

    iput-object v0, p0, Lcom/android/car/media/common/d;->b:Lcom/android/car/apps/common/UxrButton;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 50
    sget v0, Lcom/android/car/media/common/f$g;->new_album_art_fade_in_duration:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/car/media/common/d;->c:I

    return-void
.end method

.method private static synthetic a(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x6

    const-string p1, "PlaybckErrViewCtrlr"

    .line 83
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Pending intent canceled"

    .line 84
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$P4cReIGRAEBP48XFG7yJAyXKLCE(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/car/media/common/d;->a(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/car/media/common/d;->a:Lcom/android/car/apps/common/UxrTextView;

    iget v1, p0, Lcom/android/car/media/common/d;->c:I

    invoke-static {v0, v1}, Laia;->a(Landroid/view/View;I)V

    .line 56
    iget-object v0, p0, Lcom/android/car/media/common/d;->b:Lcom/android/car/apps/common/UxrButton;

    iget v1, p0, Lcom/android/car/media/common/d;->c:I

    invoke-static {v0, v1}, Laia;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/car/media/common/d;->a:Lcom/android/car/apps/common/UxrTextView;

    invoke-virtual {v0, p1}, Lcom/android/car/apps/common/UxrTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/android/car/media/common/d;->a:Lcom/android/car/apps/common/UxrTextView;

    iget v0, p0, Lcom/android/car/media/common/d;->c:I

    invoke-static {p1, v0}, Laia;->b(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 73
    iget-object p1, p0, Lcom/android/car/media/common/d;->b:Lcom/android/car/apps/common/UxrButton;

    invoke-virtual {p1, p2}, Lcom/android/car/apps/common/UxrButton;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/android/car/media/common/d;->b:Lcom/android/car/apps/common/UxrButton;

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x40

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/car/apps/common/UxrButton;->setUxRestrictions(I)V

    .line 79
    iget-object p1, p0, Lcom/android/car/media/common/d;->b:Lcom/android/car/apps/common/UxrButton;

    new-instance p2, Lcom/android/car/media/common/-$$Lambda$d$P4cReIGRAEBP48XFG7yJAyXKLCE;

    invoke-direct {p2, p3}, Lcom/android/car/media/common/-$$Lambda$d$P4cReIGRAEBP48XFG7yJAyXKLCE;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p1, p2}, Lcom/android/car/apps/common/UxrButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/android/car/media/common/d;->b:Lcom/android/car/apps/common/UxrButton;

    iget p2, p0, Lcom/android/car/media/common/d;->c:I

    invoke-static {p1, p2}, Laia;->b(Landroid/view/View;I)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/car/media/common/d;->b:Lcom/android/car/apps/common/UxrButton;

    iget p2, p0, Lcom/android/car/media/common/d;->c:I

    invoke-static {p1, p2}, Laia;->a(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/car/media/common/d;->a:Lcom/android/car/apps/common/UxrTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laia;->a(Landroid/view/View;I)V

    .line 62
    iget-object v0, p0, Lcom/android/car/media/common/d;->b:Lcom/android/car/apps/common/UxrButton;

    invoke-static {v0, v1}, Laia;->a(Landroid/view/View;I)V

    return-void
.end method
