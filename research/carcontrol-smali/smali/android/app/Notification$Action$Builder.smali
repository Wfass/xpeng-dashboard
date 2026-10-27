.class public final Landroid/app/Notification$Action$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private mAuthenticationRequired:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mIntent:Landroid/app/PendingIntent;

.field private mIsContextual:Z

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSemanticAction:I

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 2033
    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Action;)V
    .locals 9

    .line 2067
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Landroid/os/Bundle;

    .line 2068
    invoke-static {p1}, Landroid/app/Notification$Action;->access$100(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 2069
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v6

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v7

    .line 2070
    invoke-virtual {p1}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v8

    move-object v0, p0

    .line 2067
    invoke-direct/range {v0 .. v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 9

    .line 2058
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZ)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZ)V
    .locals 1

    .line 2076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2018
    iput-boolean v0, p0, Landroid/app/Notification$Action$Builder;->mAllowGeneratedReplies:Z

    .line 2077
    iput-object p1, p0, Landroid/app/Notification$Action$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2078
    iput-object p2, p0, Landroid/app/Notification$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 2079
    iput-object p3, p0, Landroid/app/Notification$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    .line 2080
    iput-object p4, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz p5, :cond_0

    .line 2082
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 2083
    invoke-static {p1, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2085
    :cond_0
    iput-boolean p6, p0, Landroid/app/Notification$Action$Builder;->mAllowGeneratedReplies:Z

    .line 2086
    iput p7, p0, Landroid/app/Notification$Action$Builder;->mSemanticAction:I

    .line 2087
    iput-boolean p8, p0, Landroid/app/Notification$Action$Builder;->mAuthenticationRequired:Z

    return-void
.end method

.method private checkContextualActionNullFields()V
    .locals 2

    .line 2201
    iget-boolean v0, p0, Landroid/app/Notification$Action$Builder;->mIsContextual:Z

    if-nez v0, :cond_0

    return-void

    .line 2203
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "Contextual Actions must contain a valid icon"

    .line 2204
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2207
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    const-string v1, "Contextual Actions must contain a valid PendingIntent"

    .line 2208
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 2100
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
    .locals 1

    .line 2124
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 2127
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification$Action;
    .locals 12

    .line 2220
    invoke-direct {p0}, Landroid/app/Notification$Action$Builder;->checkContextualActionNullFields()V

    .line 2222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    iget-object v1, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    const-class v2, Landroid/app/RemoteInput;

    const-string v3, "android.extra.DATA_ONLY_INPUTS"

    invoke-static {v1, v3, v2}, Landroid/app/Notification;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/app/RemoteInput;

    if-eqz v1, :cond_0

    .line 2226
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 2227
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2230
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    iget-object v2, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 2232
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/RemoteInput;

    .line 2233
    invoke-virtual {v4}, Landroid/app/RemoteInput;->isDataOnly()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2234
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2236
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2240
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2242
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/RemoteInput;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInput;

    .line 2243
    iget-object v2, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2245
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    .line 2246
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/RemoteInput;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInput;

    :goto_2
    move-object v6, v0

    .line 2247
    new-instance v0, Landroid/app/Notification$Action;

    iget-object v2, p0, Landroid/app/Notification$Action$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p0, Landroid/app/Notification$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/Notification$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v7, p0, Landroid/app/Notification$Action$Builder;->mAllowGeneratedReplies:Z

    iget v8, p0, Landroid/app/Notification$Action$Builder;->mSemanticAction:I

    iget-boolean v9, p0, Landroid/app/Notification$Action$Builder;->mIsContextual:Z

    iget-boolean v10, p0, Landroid/app/Notification$Action$Builder;->mAuthenticationRequired:Z

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZLandroid/app/Notification$1;)V

    return-object v0
.end method

.method public extend(Landroid/app/Notification$Action$Extender;)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 2177
    invoke-interface {p1, p0}, Landroid/app/Notification$Action$Extender;->extend(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action$Builder;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 2112
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 2142
    iput-boolean p1, p0, Landroid/app/Notification$Action$Builder;->mAllowGeneratedReplies:Z

    return-object p0
.end method

.method public setAuthenticationRequired(Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 2192
    iput-boolean p1, p0, Landroid/app/Notification$Action$Builder;->mAuthenticationRequired:Z

    return-object p0
.end method

.method public setContextual(Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 2167
    iput-boolean p1, p0, Landroid/app/Notification$Action$Builder;->mIsContextual:Z

    return-object p0
.end method

.method public setSemanticAction(I)Landroid/app/Notification$Action$Builder;
    .locals 0

    .line 2156
    iput p1, p0, Landroid/app/Notification$Action$Builder;->mSemanticAction:I

    return-object p0
.end method
