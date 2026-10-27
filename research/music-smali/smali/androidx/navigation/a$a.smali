.class public Landroidx/navigation/a$a;
.super Landroidx/navigation/i;
.source "ActivityNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/p<",
            "+",
            "Landroidx/navigation/a$a;",
            ">;)V"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1}, Landroidx/navigation/i;-><init>(Landroidx/navigation/p;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .line 296
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Landroid/content/ComponentName;)Landroidx/navigation/a$a;
    .locals 1

    .line 337
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    .line 340
    :cond_0
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Landroidx/navigation/a$a;
    .locals 1

    .line 394
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    .line 397
    :cond_0
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroidx/navigation/a$a;
    .locals 1

    .line 311
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    .line 314
    :cond_0
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final b()Landroid/content/ComponentName;
    .locals 1

    .line 350
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Landroidx/navigation/a$a;
    .locals 1

    .line 363
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    .line 366
    :cond_0
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Landroidx/navigation/a$a;
    .locals 0

    .line 425
    iput-object p1, p0, Landroidx/navigation/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Landroidx/navigation/a$a;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Landroidx/navigation/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 254
    invoke-super {p0, p1, p2}, Landroidx/navigation/i;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/r$b;->ActivityNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 257
    sget v0, Landroidx/navigation/r$b;->ActivityNavigator_targetPackage:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "${applicationId}"

    .line 259
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/navigation/a$a;->a(Ljava/lang/String;)Landroidx/navigation/a$a;

    .line 263
    sget v0, Landroidx/navigation/r$b;->ActivityNavigator_android_name:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/navigation/a$a;->a(Landroid/content/ComponentName;)Landroidx/navigation/a$a;

    .line 270
    :cond_2
    sget p1, Landroidx/navigation/r$b;->ActivityNavigator_action:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/navigation/a$a;->b(Ljava/lang/String;)Landroidx/navigation/a$a;

    .line 271
    sget p1, Landroidx/navigation/r$b;->ActivityNavigator_data:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 273
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/navigation/a$a;->a(Landroid/net/Uri;)Landroidx/navigation/a$a;

    .line 275
    :cond_3
    sget p1, Landroidx/navigation/r$b;->ActivityNavigator_dataPattern:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/navigation/a$a;->c(Ljava/lang/String;)Landroidx/navigation/a$a;

    .line 276
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method supportsActions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 445
    invoke-virtual {p0}, Landroidx/navigation/a$a;->b()Landroid/content/ComponentName;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    invoke-super {p0}, Landroidx/navigation/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, " class="

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/a$a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, " action="

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
