.class public Lcom/android/car/apps/common/c;
.super Ljava/lang/Object;
.source "CommonFlags.java"


# static fields
.field private static a:Lcom/android/car/apps/common/c;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/apps/common/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/car/apps/common/c;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/car/apps/common/c;->a:Lcom/android/car/apps/common/c;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/car/apps/common/c;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/car/apps/common/c;->a:Lcom/android/car/apps/common/c;

    .line 38
    :cond_0
    sget-object p0, Lcom/android/car/apps/common/c;->a:Lcom/android/car/apps/common/c;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/car/apps/common/c;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/car/apps/common/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    sget v1, Lcom/android/car/apps/common/h$c;->flag_improper_image_references:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/android/car/apps/common/h$i;->flag_non_local_images_system_property_name:I

    .line 69
    invoke-static {v0, v1}, Laiq;->b(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 68
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/apps/common/c;->c:Ljava/lang/Boolean;

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/car/apps/common/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
