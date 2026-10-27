.class public final Landroid/car/CarAppFocusManager;
.super Landroid/car/CarManagerBase;
.source "CarAppFocusManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;,
        Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;,
        Landroid/car/CarAppFocusManager$AppFocusRequestResult;,
        Landroid/car/CarAppFocusManager$AppFocusType;,
        Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;,
        Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;
    }
.end annotation


# static fields
.field public static final APP_FOCUS_MAX:I = 0x2

.field public static final APP_FOCUS_REQUEST_FAILED:I = 0x0

.field public static final APP_FOCUS_REQUEST_SUCCEEDED:I = 0x1

.field public static final APP_FOCUS_TYPE_NAVIGATION:I = 0x1

.field public static final APP_FOCUS_TYPE_VOICE_COMMAND:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mChangeBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;",
            "Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnershipBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;",
            "Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/IAppFocus;


# direct methods
.method constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 120
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/car/CarAppFocusManager;->mChangeBinders:Ljava/util/Map;

    .line 122
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/car/CarAppFocusManager;->mOwnershipBinders:Ljava/util/Map;

    .line 130
    invoke-static {p2}, Landroid/car/IAppFocus$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/IAppFocus;

    move-result-object p1

    iput-object p1, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "app_focus"

    return-object v0
.end method


# virtual methods
.method public abandonAppFocus(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;)V
    .locals 3

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/car/CarAppFocusManager;->mOwnershipBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;

    if-nez p1, :cond_0

    .line 323
    monitor-exit p0

    return-void

    .line 325
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :try_start_1
    invoke-virtual {p1}, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;->getAppTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 328
    iget-object v2, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, p1, v1}, Landroid/car/IAppFocus;->abandonAppFocus(Landroid/car/IAppFocusOwnershipCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p0, p1}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 325
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public abandonAppFocus(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Landroid/car/CarAppFocusManager;->mOwnershipBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;

    if-nez v0, :cond_0

    .line 296
    monitor-exit p0

    return-void

    .line 298
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    :try_start_1
    iget-object v1, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    invoke-interface {v1, v0, p2}, Landroid/car/IAppFocus;->abandonAppFocus(Landroid/car/IAppFocusOwnershipCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 302
    invoke-virtual {p0, v1}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 305
    :goto_0
    monitor-enter p0

    .line 306
    :try_start_2
    invoke-virtual {v0, p2}, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;->removeAppType(I)V

    .line 307
    invoke-virtual {v0}, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;->hasAppTypes()Z

    move-result p2

    if-nez p2, :cond_1

    .line 308
    iget-object p2, p0, Landroid/car/CarAppFocusManager;->mOwnershipBinders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 298
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 290
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFocusListener(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/car/CarAppFocusManager;->mChangeBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;-><init>(Landroid/car/CarAppFocusManager;Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;Landroid/car/CarAppFocusManager$1;)V

    .line 157
    iget-object v1, p0, Landroid/car/CarAppFocusManager;->mChangeBinders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    invoke-virtual {v0, p2}, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;->addAppType(I)V

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    iget-object p1, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    invoke-interface {p1, v0, p2}, Landroid/car/IAppFocus;->registerFocusListener(Landroid/car/IAppFocusListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p0, p1}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 160
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActiveAppTypes()[I
    .locals 2

    .line 223
    :try_start_0
    iget-object v0, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    invoke-interface {v0}, Landroid/car/IAppFocus;->getActiveAppTypes()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 225
    invoke-virtual {p0, v0, v1}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public isOwningFocus(Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;I)Z
    .locals 2

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/car/CarAppFocusManager;->mOwnershipBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 239
    monitor-exit p0

    return v0

    .line 241
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    iget-object v1, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    invoke-interface {v1, p1, p2}, Landroid/car/IAppFocus;->isOwningFocus(Landroid/car/IAppFocusOwnershipCallback;I)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 245
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 241
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 135
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/car/CarAppFocusManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "app_focus"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/IAppFocus$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/IAppFocus;

    move-result-object v0

    iput-object v0, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {p0, v0}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public removeFocusListener(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;)V
    .locals 3

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Landroid/car/CarAppFocusManager;->mChangeBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;

    if-nez p1, :cond_0

    .line 205
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    invoke-virtual {p1}, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;->getAppTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 210
    iget-object v2, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, p1, v1}, Landroid/car/IAppFocus;->unregisterFocusListener(Landroid/car/IAppFocusListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p0, p1}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 207
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeFocusListener(Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;I)V
    .locals 2

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/car/CarAppFocusManager;->mChangeBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;

    if-nez v0, :cond_0

    .line 178
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    iget-object v1, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    invoke-interface {v1, v0, p2}, Landroid/car/IAppFocus;->unregisterFocusListener(Landroid/car/IAppFocusListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 184
    invoke-virtual {p0, v1}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 187
    :goto_0
    monitor-enter p0

    .line 188
    :try_start_2
    invoke-virtual {v0, p2}, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;->removeAppType(I)V

    .line 189
    invoke-virtual {v0}, Landroid/car/CarAppFocusManager$IAppFocusListenerImpl;->hasAppTypes()Z

    move-result p2

    if-nez p2, :cond_1

    .line 190
    iget-object p2, p0, Landroid/car/CarAppFocusManager;->mChangeBinders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 180
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public requestAppFocus(ILandroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;)I
    .locals 2

    if-eqz p2, :cond_1

    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Landroid/car/CarAppFocusManager;->mOwnershipBinders:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;-><init>(Landroid/car/CarAppFocusManager;Landroid/car/CarAppFocusManager$OnAppFocusOwnershipCallback;Landroid/car/CarAppFocusManager$1;)V

    .line 270
    iget-object v1, p0, Landroid/car/CarAppFocusManager;->mOwnershipBinders:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    invoke-virtual {v0, p1}, Landroid/car/CarAppFocusManager$IAppFocusOwnershipCallbackImpl;->addAppType(I)V

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :try_start_1
    iget-object p2, p0, Landroid/car/CarAppFocusManager;->mService:Landroid/car/IAppFocus;

    invoke-interface {p2, v0, p1}, Landroid/car/IAppFocus;->requestAppFocus(Landroid/car/IAppFocusOwnershipCallback;I)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 277
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/CarAppFocusManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 273
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 263
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
