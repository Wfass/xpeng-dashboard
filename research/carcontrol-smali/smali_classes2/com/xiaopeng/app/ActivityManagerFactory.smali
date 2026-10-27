.class public abstract Lcom/xiaopeng/app/ActivityManagerFactory;
.super Ljava/lang/Object;
.source "ActivityManagerFactory.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/xiaopeng/app/ActivityManagerFactory;
    .locals 1

    .line 13
    new-instance v0, Lcom/xiaopeng/app/ActivityManagerFactoryImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/app/ActivityManagerFactoryImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract getSpeechObserver()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyInstallPersistentPackage(Ljava/lang/String;)V
.end method

.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;I)V
.end method

.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;I)V
.end method

.method public abstract startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;I)V
.end method

.method public abstract startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;II)V
.end method

.method public abstract startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;I)V
.end method

.method public abstract startActivityForResult(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;I)V
.end method
