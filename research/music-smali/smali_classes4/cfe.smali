.class public Lcfe;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"


# direct methods
.method public static a(I)Lceo;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lceo;

    invoke-direct {v0, p0}, Lceo;-><init>(I)V

    return-object v0

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Lcet;

    invoke-direct {v0, p0}, Lcet;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lceo;
    .locals 2

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.security.GeneralSecurityException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcet;

    invoke-direct {v0, p0}, Lcet;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lceo;

    invoke-direct {v0, p0}, Lceo;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
