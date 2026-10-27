.class public Lapo;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapo$a;,
        Lapo$c;,
        Lapo$b;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:J

.field public static final d:J


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lapn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "persist.sys.theme.logger"

    .line 32
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lapo;->a:Z

    .line 33
    sget-boolean v1, Lapo;->a:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lapo;->b:Z

    .line 49
    sget-wide v0, Landroid/app/UiModeManager;->THEME_ANIMATION_INTERVAL:J

    sput-wide v0, Lapo;->c:J

    .line 50
    sget-wide v0, Landroid/app/UiModeManager;->THEME_TIMEOUT_DELAY:J

    sput-wide v0, Lapo;->d:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lapq;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lapo;->e:Landroid/content/Context;

    .line 59
    new-instance p1, Lapn;

    invoke-direct {p1}, Lapn;-><init>()V

    iput-object p1, p0, Lapo;->f:Lapn;

    .line 60
    iget-object p1, p0, Lapo;->f:Lapn;

    iput-object p3, p1, Lapn;->b:Ljava/lang/String;

    .line 61
    iput-object p2, p1, Lapn;->a:Landroid/view/View;

    .line 62
    iput-object p4, p1, Lapn;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "uimode"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 81
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getThemeMode()I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lapo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lapq;",
            ">;)",
            "Lapo;"
        }
    .end annotation

    .line 65
    new-instance v0, Lapo;

    invoke-direct {v0, p0, p1, p2, p3}, Lapo;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-static {p0, p1, v0, v0, v1}, Laps;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-static {p0, p1, p2, p3, p4}, Laps;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Configuration;Landroid/view/Window;I)V
    .locals 0

    .line 129
    invoke-static {p0}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 137
    invoke-static {p0}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-static {p0, p1}, Laps;->a(Landroid/view/View;Ljava/util/HashMap;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    const-string v0, "uimode"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 85
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getDayNightMode()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/res/Configuration;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 73
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p0, p0, 0xc0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 94
    iget p0, v0, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_1
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    .line 100
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "uimode"

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 114
    invoke-virtual {p0}, Landroid/app/UiModeManager;->isThemeWorking()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    .line 68
    invoke-static {}, Laps;->a()Laps;

    move-result-object v0

    iget-object v1, p0, Lapo;->e:Landroid/content/Context;

    iget-object v2, p0, Lapo;->f:Lapn;

    invoke-virtual {v0, v1, v2, p1}, Laps;->a(Landroid/content/Context;Lapn;Landroid/content/res/Configuration;)V

    return-void
.end method
