.class final Landroid/support/v4/media/SessionToken2ImplBase;
.super Ljava/lang/Object;
.source "SessionToken2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mISession2:Landroid/support/v4/media/IMediaSession2;

.field private final mPackageName:Ljava/lang/String;

.field private final mServiceName:Ljava/lang/String;

.field private final mSessionId:Ljava/lang/String;

.field private final mType:I

.field private final mUid:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    .line 124
    iput p2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    .line 125
    iput-object p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 127
    iget p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    .line 129
    iput-object p5, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 130
    iput-object p6, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    .line 131
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p2, :cond_3

    .line 84
    iput-object p2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    .line 85
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 86
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 89
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 91
    :try_start_0
    iget-object p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_0
    :goto_0
    iput p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    .line 99
    const-string p3, "android.media.MediaLibraryService2"

    invoke-static {p1, p3, p2}, Landroid/support/v4/media/SessionToken2ImplBase;->getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p3

    .line 101
    if-eqz p3, :cond_1

    .line 102
    iput-object p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 103
    const/4 p1, 0x2

    iput p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    goto :goto_1

    .line 106
    :cond_1
    const-string p3, "android.media.MediaSessionService2"

    invoke-static {p1, p3, p2}, Landroid/support/v4/media/SessionToken2ImplBase;->getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 108
    const/4 p1, 0x1

    iput p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    .line 110
    :goto_1
    iget-object p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 114
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    .line 115
    return-void

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "service "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " doesn\'t implement"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " session service nor library service. Use service\'s full name."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceComponent shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/SessionToken2ImplBase;
    .locals 8
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 230
    if-nez p0, :cond_0

    .line 231
    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    const-string v0, "android.media.token.uid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 234
    const-string v0, "android.media.token.type"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 235
    const-string v0, "android.media.token.package_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    const-string v0, "android.media.token.service_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    const-string v0, "android.media.token.session_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    const-string v0, "android.media.token.session_binder"

    invoke-static {p0, v0}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/IMediaSession2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaSession2;

    move-result-object v7

    .line 242
    packed-switch v3, :pswitch_data_0

    .line 256
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :pswitch_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session service needs service name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :pswitch_1
    if-eqz v7, :cond_3

    .line 258
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v6, :cond_2

    .line 261
    new-instance p0, Landroid/support/v4/media/SessionToken2ImplBase;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V

    return-object p0

    .line 259
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Package name nor ID cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token for session, binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 269
    if-eqz p0, :cond_2

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 272
    const-string p0, ""

    return-object p0

    .line 274
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.media.session"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 270
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const/16 p1, 0x80

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 289
    if-eqz p0, :cond_2

    .line 290
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 291
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 292
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    .line 293
    goto :goto_1

    .line 295
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 296
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-static {v0}, Landroid/support/v4/media/SessionToken2ImplBase;->getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 290
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 301
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private sessionBinderEquals(Landroid/support/v4/media/IMediaSession2;Landroid/support/v4/media/IMediaSession2;)Z
    .locals 0

    .line 158
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {p1}, Landroid/support/v4/media/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p2}, Landroid/support/v4/media/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 159
    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 145
    instance-of v0, p1, Landroid/support/v4/media/SessionToken2ImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    return v1

    .line 148
    :cond_0
    check-cast p1, Landroid/support/v4/media/SessionToken2ImplBase;

    .line 149
    iget v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    iget v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 150
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 151
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 152
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    iget v2, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    iget-object p1, p1, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    .line 154
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/SessionToken2ImplBase;->sessionBinderEquals(Landroid/support/v4/media/IMediaSession2;Landroid/support/v4/media/IMediaSession2;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    invoke-interface {v0}, Landroid/support/v4/media/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 177
    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 202
    iget v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 135
    nop

    .line 136
    iget v0, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    iget v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    iget-object v2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 139
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x1f

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    mul-int/2addr v2, v5

    add-int/2addr v1, v2

    mul-int/2addr v5, v1

    add-int/2addr v0, v5

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string v1, "android.media.token.uid"

    iget v2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v1, "android.media.token.package_name"

    iget-object v2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "android.media.token.service_name"

    iget-object v2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "android.media.token.session_id"

    iget-object v2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "android.media.token.type"

    iget v2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "android.media.token.session_binder"

    iget-object v2, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    invoke-interface {v2}, Landroid/support/v4/media/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 216
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionToken {pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IMediaSession2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/SessionToken2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
