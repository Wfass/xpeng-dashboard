.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final LIGHTNESS_TEXT_DIFFERENCE_DARK:I = -0xa

.field private static final LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I = 0x14

.field private static final USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field mColors:Landroid/app/Notification$Colors;

.field private mContext:Landroid/content/Context;

.field private mInNightMode:Z

.field private mIsLegacy:Z

.field private mIsLegacyInitialized:Z

.field private mN:Landroid/app/Notification;

.field mParams:Landroid/app/Notification$StandardTemplateParams;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private mStyle:Landroid/app/Notification$Style;

.field private mTintActionButtons:Z

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "notifications.only_title"

    const/4 v1, 0x1

    .line 4077
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 4136
    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 4

    .line 4142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4094
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 4096
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 4107
    new-instance v0, Landroid/app/Notification$StandardTemplateParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification$1;)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 4108
    new-instance v0, Landroid/app/Notification$Colors;

    invoke-direct {v0}, Landroid/app/Notification$Colors;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    .line 4143
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111015f

    .line 4145
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    const v1, 0x11100d9

    .line 4147
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4148
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4149
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    :cond_1
    if-nez p2, :cond_3

    .line 4154
    new-instance p2, Landroid/app/Notification;

    invoke-direct {p2}, Landroid/app/Notification;-><init>()V

    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_2

    .line 4156
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.showWhen"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4158
    :cond_2
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, p1, Landroid/app/Notification;->priority:I

    .line 4159
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, p1, Landroid/app/Notification;->visibility:I

    goto/16 :goto_1

    .line 4161
    :cond_3
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4162
    iget-object p1, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p1, :cond_4

    .line 4163
    iget-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4166
    :cond_4
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.people.list"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4167
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4168
    iget-object p2, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4171
    :cond_5
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_6

    .line 4172
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4175
    :cond_6
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    .line 4176
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 4179
    :cond_7
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 4182
    invoke-static {p1}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "Notification"

    if-nez p2, :cond_8

    .line 4184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown style class: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    :try_start_0
    new-array p1, v3, [Ljava/lang/Class;

    .line 4188
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 4189
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 4190
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$Style;

    .line 4191
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    if-eqz p1, :cond_9

    .line 4194
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "Could not create Style"

    .line 4197
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4126
    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 4127
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1, p2}, Landroid/app/Notification;->access$602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2700(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .locals 0

    .line 4059
    invoke-static {p0, p1, p2}, Landroid/app/Notification$Builder;->setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 0

    .line 4059
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 4059
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 4059
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 0

    .line 4059
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 4059
    iget-object p0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3502(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 4059
    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3600(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 0

    .line 4059
    iget-object p0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 0

    .line 4059
    iget-object p0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getConversationLayoutResource()I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 0

    .line 4059
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    .line 4059
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    .line 4059
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    .line 4059
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;
    .locals 0

    .line 4059
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5000(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 0

    .line 4059
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Landroid/app/Notification$Builder;)Z
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isCallActionColorCustomizable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Landroid/app/Notification$Builder;)I
    .locals 0

    .line 4059
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 6

    .line 5732
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    .line 5733
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 5734
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_1

    const v0, 0x10900b6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 5732
    :goto_1
    invoke-virtual {p2, v0}, Landroid/app/Notification$StandardTemplateParams;->headerless(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 5736
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 5738
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 5740
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5741
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5742
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5743
    invoke-direct {p0, v0, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIconAndApplyMargin(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 5744
    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->handleProgressBar(Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/app/Notification$StandardTemplateParams;)Z

    move-result p1

    .line 5746
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result p3

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p3, :cond_2

    .line 5747
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5748
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    iget-object v5, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, p3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5749
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-direct {p0, v0, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_2

    .line 5750
    :cond_2
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    const v5, 0x1020016

    if-eq p3, v5, :cond_3

    .line 5752
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, p3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5753
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, p3, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5755
    :cond_3
    :goto_2
    iget-object p3, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    iget-object p3, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p1, :cond_4

    iget-boolean p3, p2, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    if-eqz p3, :cond_5

    .line 5757
    :cond_4
    iget p1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5758
    iget p1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    iget-object p3, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5759
    iget p1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_3

    .line 5761
    :cond_5
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    const v1, 0x1020558

    if-eq p3, v1, :cond_6

    .line 5763
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5764
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p3, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_6
    move v1, p1

    .line 5766
    :goto_3
    invoke-static {v0, p2, v1}, Landroid/app/Notification$Builder;->setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    return-object v0
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 12

    .line 6243
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 6245
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 6246
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSnoozeAction(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6248
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    const v0, 0x102051f

    const-string/jumbo v1, "setImageTintList"

    .line 6249
    invoke-virtual {p1, v0, v1, p3}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    const v0, 0x1020282

    .line 6250
    invoke-virtual {p1, v0, v1, p3}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6256
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNonContextualActions()Ljava/util/List;

    move-result-object p3

    .line 6258
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x3

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 6259
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v10, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v8

    .line 6260
    :goto_1
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    const v11, 0x1020230

    if-eqz v0, :cond_2

    const v1, 0x1020230

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 6263
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const v0, 0x105004c

    const-string/jumbo v1, "setCollapsibleIndentDimen"

    .line 6266
    invoke-virtual {p1, v11, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_2
    const-string/jumbo v0, "setEmphasizedMode"

    .line 6269
    invoke-virtual {p1, v11, v0, v10}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const/16 v0, 0x8

    const v1, 0x1020231

    if-lez v7, :cond_5

    .line 6270
    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    if-nez v2, :cond_5

    .line 6271
    invoke-virtual {p1, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6272
    invoke-virtual {p1, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x1020432

    .line 6273
    invoke-virtual {p1, v1, v6, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    move v1, v9

    move v2, v1

    :goto_2
    if-ge v1, v7, :cond_6

    .line 6276
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 6278
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 6281
    invoke-direct {p0, v3, v10, p2}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v3

    const v5, 0x1020217

    if-eqz v4, :cond_3

    if-nez v10, :cond_3

    const-string/jumbo v4, "setBackgroundResource"

    .line 6284
    invoke-virtual {v3, v5, v4, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_3
    if-eqz v10, :cond_4

    if-lez v1, :cond_4

    const/4 v4, 0x4

    .line 6289
    invoke-virtual {v3, v5, v4, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6291
    :cond_4
    invoke-virtual {p1, v11, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6294
    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v2, v9

    .line 6297
    :cond_6
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p3, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/app/RemoteInputHistoryItem;

    const-string v3, "android.remoteInputHistoryItems"

    invoke-static {p3, v3, v1}, Landroid/app/Notification;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, [Landroid/app/RemoteInputHistoryItem;

    if-eqz v2, :cond_8

    if-eqz p3, :cond_8

    .line 6299
    array-length v1, p3

    if-lez v1, :cond_8

    aget-object v1, p3, v9

    .line 6300
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-lez v1, :cond_8

    .line 6302
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.remoteInputSpinner"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x1020438

    .line 6303
    invoke-virtual {p1, v2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x102043b

    .line 6304
    invoke-virtual {p1, v2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6306
    aget-object v2, p3, v9

    .line 6307
    invoke-virtual {v2}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x102043a

    .line 6306
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6308
    invoke-direct {p0, p1, v3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    if-eqz v1, :cond_7

    move v0, v9

    :cond_7
    const v1, 0x1020439

    .line 6309
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6313
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 6311
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 6315
    array-length v0, p3

    if-le v0, v8, :cond_8

    aget-object v0, p3, v8

    invoke-virtual {v0}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v0, v8, :cond_8

    const v0, 0x102043c

    .line 6317
    invoke-virtual {p1, v0, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6318
    aget-object v1, p3, v8

    .line 6319
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6318
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6320
    invoke-direct {p0, p1, v0, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6322
    array-length v0, p3

    const/4 v1, 0x2

    if-le v0, v1, :cond_8

    aget-object v0, p3, v1

    invoke-virtual {v0}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v0, v1, :cond_8

    const v0, 0x102043d

    .line 6324
    invoke-virtual {p1, v0, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6326
    aget-object p3, p3, v1

    .line 6327
    invoke-virtual {p3}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 6326
    invoke-virtual {p1, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6328
    invoke-direct {p0, p1, v0, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    :cond_8
    return-object p1
.end method

.method private bigContentViewRequired()Z
    .locals 3

    .line 6505
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    return v1

    .line 6511
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6512
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method private bindAlertedIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 3

    .line 5675
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Colors;->getSecondaryTextColor()I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const v1, 0x1020243

    const/4 v2, 0x0

    .line 5672
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 5

    .line 5982
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 5983
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getProtectionColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->access$2100(II)I

    move-result v1

    .line 5984
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-static {v2, v1}, Landroid/app/Notification$Colors;->access$2100(II)I

    move-result v2

    const v3, 0x1020319

    const-string/jumbo v4, "setDefaultTextColor"

    .line 5985
    invoke-virtual {p1, v3, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v4, "setDefaultPillColor"

    .line 5986
    invoke-virtual {p1, v3, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5988
    iget-boolean v4, p2, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    if-eqz v4, :cond_0

    .line 5989
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getTertiaryAccentColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->access$2100(II)I

    move-result v1

    .line 5990
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Colors;->getOnAccentTextColor()I

    move-result p2

    invoke-static {p2, v1}, Landroid/app/Notification$Colors;->access$2100(II)I

    move-result v2

    :cond_0
    const-string/jumbo p2, "setHighlightTextColor"

    .line 5992
    invoke-virtual {p1, v3, p2, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo p2, "setHighlightPillColor"

    .line 5993
    invoke-virtual {p1, v3, p2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .locals 3

    .line 6119
    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-nez p3, :cond_0

    return v2

    .line 6123
    :cond_0
    iget-boolean p3, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 6128
    :cond_1
    iget-boolean p3, p2, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    if-eqz p3, :cond_2

    .line 6131
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result p1

    return p1

    :cond_2
    const p3, 0x1020259

    .line 6133
    invoke-virtual {p1, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6134
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6135
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return v0
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .locals 7

    .line 5998
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    const-string/jumbo v1, "setTime"

    const v2, 0x1020576

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x102057a

    .line 6000
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6001
    invoke-direct {p0, p1, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6003
    :cond_0
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p3, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showChronometer"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x10202ae

    .line 6004
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6005
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    .line 6006
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-string/jumbo v2, "setBase"

    .line 6005
    invoke-virtual {p1, p3, v2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const/4 v0, 0x1

    const-string/jumbo v1, "setStarted"

    .line 6007
    invoke-virtual {p1, p3, v1, v0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6008
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6009
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 6010
    invoke-direct {p0, p1, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_1

    .line 6012
    :cond_1
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6013
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v3, p3, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6014
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_1

    .line 6019
    :cond_2
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v3, p3, Landroid/app/Notification;->when:J

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-eqz p3, :cond_3

    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v3, p3, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_3
    iget-object p3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v3, p3, Landroid/app/Notification;->creationTime:J

    :goto_0
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6020
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    :goto_1
    return-void
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .locals 4

    .line 6029
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6032
    :cond_0
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 6033
    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6034
    invoke-virtual {v2}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6035
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    :cond_1
    if-nez v0, :cond_2

    .line 6037
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6038
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.infoText"

    .line 6039
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6040
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6042
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6045
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6044
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x1020372

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6046
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6047
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p3, :cond_3

    const p3, 0x1020373

    .line 6049
    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6050
    invoke-direct {p0, p1, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private bindHeaderTextSecondary(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .locals 3

    .line 6062
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6065
    :cond_0
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6066
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    .line 6067
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6066
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x1020374

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6068
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6069
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p3, :cond_1

    const p3, 0x1020375

    .line 6071
    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6072
    invoke-direct {p0, p1, p3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 7

    .line 5917
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 5918
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 5922
    :cond_0
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 5923
    :goto_0
    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    .line 5924
    :cond_2
    iget-object v2, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_3

    iget-object v2, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    :goto_1
    const v3, 0x1020557

    const v4, 0x10203d0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 5935
    :cond_4
    invoke-virtual {p1, v4, v3, v5}, Landroid/widget/RemoteViews;->setIntTag(III)V

    goto :goto_3

    .line 5930
    :cond_5
    :goto_2
    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5931
    invoke-virtual {p1, v4, v3, v6}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 5939
    :goto_3
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_6

    move v0, v5

    goto :goto_4

    :cond_6
    move v0, v6

    .line 5940
    :goto_4
    invoke-direct {p0, v2, v0, p3}, Landroid/app/Notification$Builder;->calculateRightIconDimens(Landroid/graphics/drawable/Icon;ZLandroid/app/Notification$TemplateBindResult;)V

    const v3, 0x1020551

    const v4, 0x10204c7

    if-eqz v2, :cond_7

    .line 5944
    iget v1, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    invoke-virtual {p1, v4, v1, v5}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 5946
    iget p3, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    invoke-virtual {p1, v4, p3, v5}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 5948
    invoke-virtual {p1, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5949
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5950
    invoke-virtual {p1, v4, v3, v0}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 5952
    invoke-direct {p0, v2, p1, p2}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    goto :goto_5

    .line 5957
    :cond_7
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5958
    invoke-virtual {p1, v4, v3, v6}, Landroid/widget/RemoteViews;->setIntTag(III)V

    :goto_5
    return-void
.end method

.method private bindLargeIconAndApplyMargin(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 2

    if-nez p3, :cond_0

    .line 5863
    new-instance p3, Landroid/app/Notification$TemplateBindResult;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 5865
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 5866
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez v0, :cond_1

    .line 5868
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v1, 0x1020434

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 5869
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v1, 0x1020016

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 5871
    iget-object p3, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {p3, p1, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 5872
    iget p3, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string/jumbo v0, "setNumIndentLines"

    invoke-virtual {p1, p3, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 3

    .line 5963
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    const/4 v0, 0x0

    .line 5965
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v0

    .line 5966
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderTextSecondary(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 5967
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5970
    invoke-direct {p0, p1, p2, v1}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 5972
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 5973
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindPhishingAlertIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5974
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5975
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindAlertedIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5976
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 5977
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1, v1}, Landroid/app/Notification;->access$1802(Landroid/app/Notification;Z)Z

    return-void
.end method

.method private bindPhishingAlertIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 3

    .line 5628
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Colors;->getErrorColor()I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v1, 0x1020475

    const/4 v2, 0x0

    .line 5625
    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 3

    .line 5659
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x102048f

    .line 5662
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 5663
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5664
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5666
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 5665
    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 3

    .line 6160
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$2200(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 6161
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget v2, v0, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2202(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 6163
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$2200(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6164
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    const-string/jumbo v2, "setImageLevel"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6165
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$2200(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method private bindSnoozeAction(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 5

    .line 6198
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 6199
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    if-nez v0, :cond_1

    iget p2, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    xor-int/lit8 v0, p2, 0x1

    const v3, 0x102051f

    const-string/jumbo v4, "setEnabled"

    .line 6201
    invoke-virtual {p1, v3, v4, v0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-eqz p2, :cond_2

    const/16 v0, 0x8

    .line 6204
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    if-nez p2, :cond_3

    .line 6207
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6208
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 6209
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isSnoozeSettingEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    const p2, 0x1020432

    const/4 v0, 0x3

    .line 6211
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    :cond_4
    return-void
.end method

.method private calculateRightIconDimens(Landroid/graphics/drawable/Icon;ZLandroid/app/Notification$TemplateBindResult;)V
    .locals 11

    .line 5883
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5884
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x105020e

    .line 5885
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v1

    const v3, 0x10501e4

    .line 5887
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    const v4, 0x10501f1

    .line 5889
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    sub-float v10, v4, v3

    const v3, 0x1050210

    .line 5891
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float v8, v0, v1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 5894
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5895
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_1

    .line 5896
    :cond_0
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5898
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 5899
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-le v0, p2, :cond_1

    if-lez p2, :cond_1

    const v1, 0x3fe38e39

    mul-float/2addr v1, v8

    int-to-float v0, v0

    mul-float/2addr v0, v8

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 5902
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    move v7, p2

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    add-float v9, v7, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    move v6, p1

    move-object v5, p3

    .line 5908
    invoke-virtual/range {v5 .. v10}, Landroid/app/Notification$TemplateBindResult;->setRightIconState(ZFFFF)V

    return-void
.end method

.method private createSummaryText()Ljava/lang/CharSequence;
    .locals 5

    .line 6684
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6685
    sget-boolean v1, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 6688
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-nez v0, :cond_1

    .line 6690
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title.big"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6692
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 6694
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6696
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 6698
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v4, 0x10405c1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    if-eqz v3, :cond_4

    .line 6702
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    return-object v1
.end method

.method public static ensureButtonFillContrast(II)I
    .locals 4

    .line 6907
    invoke-static {p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v0

    const-wide v1, 0x3ff4cccccccccccdL    # 1.3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 6908
    invoke-static {p0, p1, v3, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result p0

    goto :goto_0

    .line 6909
    :cond_0
    invoke-static {p0, p1, v3, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 6824
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_a

    .line 6825
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 6826
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 6827
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6828
    array-length v6, v3

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_9

    aget-object v8, v3, v7

    .line 6830
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 6831
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v11, v10, v9

    .line 6832
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v5

    .line 6833
    :goto_1
    instance-of v12, v8, Landroid/text/style/CharacterStyle;

    if-eqz v12, :cond_1

    .line 6834
    move-object v12, v8

    check-cast v12, Landroid/text/style/CharacterStyle;

    invoke-virtual {v12}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v12

    goto :goto_2

    :cond_1
    move-object v12, v8

    .line 6836
    :goto_2
    instance-of v13, v12, Landroid/text/style/TextAppearanceSpan;

    const/4 v14, 0x0

    if-eqz v13, :cond_5

    .line 6837
    move-object v13, v12

    check-cast v13, Landroid/text/style/TextAppearanceSpan;

    .line 6838
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_4

    if-eqz v11, :cond_2

    move-object/from16 v16, v3

    move/from16 v17, v6

    move-object/from16 v22, v14

    goto :goto_4

    .line 6844
    :cond_2
    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v11

    .line 6845
    array-length v12, v11

    new-array v14, v12, [I

    :goto_3
    if-ge v5, v12, :cond_3

    move-object/from16 v16, v3

    .line 6847
    invoke-static/range {p1 .. p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v3

    move/from16 v17, v6

    .line 6848
    aget v6, v11, v5

    invoke-static {v6, v1, v3}, Lcom/android/internal/util/ContrastColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v3

    aput v3, v14, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move/from16 v6, v17

    goto :goto_3

    :cond_3
    move-object/from16 v16, v3

    move/from16 v17, v6

    .line 6851
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-virtual {v5}, [[I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    invoke-direct {v3, v5, v14}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v22, v3

    .line 6854
    :goto_4
    new-instance v12, Landroid/text/style/TextAppearanceSpan;

    .line 6855
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v19

    .line 6856
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v20

    .line 6857
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v21

    .line 6859
    invoke-virtual {v13}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v23

    move-object/from16 v18, v12

    invoke-direct/range {v18 .. v23}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    goto :goto_5

    :cond_4
    move-object/from16 v16, v3

    move/from16 v17, v6

    :goto_5
    move-object v14, v12

    goto :goto_6

    :cond_5
    move-object/from16 v16, v3

    move/from16 v17, v6

    .line 6861
    instance-of v3, v12, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_7

    if-eqz v11, :cond_6

    goto :goto_6

    .line 6865
    :cond_6
    check-cast v12, Landroid/text/style/ForegroundColorSpan;

    .line 6866
    invoke-virtual {v12}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    .line 6867
    invoke-static/range {p1 .. p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v5

    .line 6868
    invoke-static {v3, v1, v5}, Lcom/android/internal/util/ContrastColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v3

    .line 6870
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v14, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_6

    :cond_7
    move-object v14, v8

    :goto_6
    if-eqz v14, :cond_8

    .line 6876
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v14, v9, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move/from16 v6, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    return-object v4

    :cond_a
    return-object v0
.end method

.method private fullyCustomViewRequiresDecoration(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6376
    invoke-static {}, Landroid/app/Notification;->access$2300()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 6379
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 5

    .line 6709
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6710
    :goto_0
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz p2, :cond_1

    .line 6711
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v4

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 6712
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v4

    goto :goto_1

    .line 6713
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v4

    :goto_1
    invoke-direct {v2, v3, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    const v3, 0x1020217

    if-nez v0, :cond_3

    .line 6715
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 6717
    :cond_3
    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 6718
    invoke-static {p1}, Landroid/app/Notification$Action;->access$2500(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6719
    invoke-static {p1}, Landroid/app/Notification$Action;->access$2500(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    :cond_4
    if-eqz p2, :cond_8

    .line 6723
    iget-object p2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 6724
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getSecondaryAccentColor()I

    move-result v0

    .line 6725
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6726
    invoke-static {p2}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_2

    .line 6729
    :cond_5
    invoke-static {p2}, Landroid/app/Notification$Builder;->getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 6732
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v0

    .line 6734
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6733
    invoke-static {v4, v0}, Landroid/app/Notification$Builder;->ensureButtonFillContrast(II)I

    move-result v0

    .line 6737
    :cond_6
    invoke-static {p2, v0}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 6739
    :goto_2
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6740
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {p2, v0, v4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p2

    .line 6742
    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v4, 0xffffff

    and-int/2addr p2, v4

    const/high16 v4, 0x33000000

    or-int/2addr p2, v4

    .line 6746
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const-string/jumbo v4, "setRippleColor"

    .line 6745
    invoke-virtual {v2, v3, v4, p2}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6748
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const-string/jumbo v0, "setButtonBackground"

    .line 6747
    invoke-virtual {v2, v3, v0, p2}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6749
    iget-boolean p2, p3, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    if-eqz p2, :cond_9

    .line 6750
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6751
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "key_action_priority"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string/jumbo p3, "setIsPriority"

    .line 6752
    invoke-virtual {v2, v3, p3, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-eqz p2, :cond_7

    const v1, 0x105004d

    :cond_7
    const-string/jumbo p2, "setMinimumWidth"

    .line 6755
    invoke-virtual {v2, v3, p2, v1}, Landroid/widget/RemoteViews;->setIntDimen(ILjava/lang/String;I)V

    goto :goto_3

    .line 6758
    :cond_8
    iget-object p2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 6759
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 6758
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6760
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6764
    :cond_9
    :goto_3
    iget-object p2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_a

    const p2, 0x1020431

    .line 6766
    invoke-virtual {v2, v3, p2, p1}, Landroid/widget/RemoteViews;->setIntTag(III)V

    :cond_a
    return-object v2
.end method

.method private getActionLayoutResource()I
    .locals 1

    const v0, 0x10900a2

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    const v0, 0x10900a5

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    .line 5385
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 5386
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    .line 7255
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result p1

    return p1
.end method

.method private getBaseLayoutResource()I
    .locals 1

    const v0, 0x10900ab

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    const v0, 0x10900ac

    return v0
.end method

.method private getBigMessagingLayoutResource()I
    .locals 1

    const v0, 0x10900af

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    const v0, 0x10900b0

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    const v0, 0x10900b1

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/ContrastColorUtil;
    .locals 1

    .line 4388
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    if-nez v0, :cond_0

    .line 4389
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 4391
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    return-object v0
.end method

.method private getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;
    .locals 4

    .line 5823
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result p1

    iget-boolean v3, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/Notification$Colors;->resolvePalette(Landroid/content/Context;IZZ)V

    .line 5824
    iget-object p1, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    return-object p1
.end method

.method private getConversationLayoutResource()I
    .locals 1

    const v0, 0x10900b3

    return v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .locals 1

    const v0, 0x10900a3

    return v0
.end method

.method public static getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 9

    .line 6785
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 6786
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 6787
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 6790
    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 6791
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 6792
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v8, v7

    .line 6793
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v8, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    if-nez v7, :cond_1

    goto :goto_2

    .line 6797
    :cond_1
    instance-of v7, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v7, :cond_2

    .line 6798
    check-cast v6, Landroid/text/style/TextAppearanceSpan;

    .line 6799
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 6801
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 6803
    :cond_2
    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_3

    .line 6804
    check-cast v6, Landroid/text/style/ForegroundColorSpan;

    .line 6805
    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private getHeadsUpBaseLayoutResource()I
    .locals 1

    const v0, 0x10900b4

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    const v0, 0x10900b5

    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    const v0, 0x10900b7

    return v0
.end method

.method private getNonContextualActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 6231
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6232
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6233
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    .line 6234
    invoke-virtual {v2}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6235
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    .line 6987
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getPrimaryAccentColor()I

    move-result p1

    return p1
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 5

    .line 5645
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5649
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5651
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5652
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 5653
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5654
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 5633
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5640
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5641
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    .line 5640
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    .line 6982
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getContrastColor()I

    move-result p1

    return p1
.end method

.method private getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 1

    .line 6973
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6974
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private handleProgressBar(Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/app/Notification$StandardTemplateParams;)Z
    .locals 5

    const-string v0, "android.progressMax"

    const/4 v1, 0x0

    .line 5841
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.progress"

    .line 5842
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.progressIndeterminate"

    .line 5843
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 5844
    iget-boolean v3, p3, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    const v4, 0x102000d

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 5845
    :cond_0
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5846
    invoke-virtual {p1, v4, v0, v2, p2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 5847
    iget-object p2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v0, 0x1060223

    .line 5848
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 5847
    invoke-virtual {p1, v4, p2}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 5849
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 5850
    invoke-virtual {p1, v4, p2}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 5851
    invoke-virtual {p1, v4, p2}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/16 p2, 0x8

    .line 5854
    invoke-virtual {p1, v4, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return v1
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 5

    .line 6337
    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    goto :goto_2

    .line 6342
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 6347
    :cond_1
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 6348
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 6349
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    array-length v3, v4

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method private isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z
    .locals 0

    .line 6146
    iget-boolean p1, p1, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->color:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCallActionColorCustomizable()Z
    .locals 2

    .line 6154
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6155
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isColorDark(I)Z
    .locals 4

    .line 6895
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLegacy()Z
    .locals 3

    .line 6918
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_1

    .line 6919
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 6921
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 6923
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0
.end method

.method private isSnoozeSettingEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 6218
    :try_start_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_snooze"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :catch_0
    :cond_0
    return v0
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 3

    if-eqz p0, :cond_0

    const v0, 0x1020319

    const/4 v1, 0x1

    const-string/jumbo v2, "setExpanded"

    .line 6564
    invoke-virtual {p0, v0, v2, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .locals 3

    .line 6536
    invoke-virtual {p1}, Landroid/app/Notification$StandardTemplateParams;->disallowColorization()Landroid/app/Notification$StandardTemplateParams;

    .line 6537
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const v2, 0x10900aa

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6539
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 6540
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    return-object v0
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 9

    .line 7164
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7169
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 7174
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v0, v0, Landroid/app/Notification$BuilderRemoteViews;

    const-string v1, "android.rebuild.contentViewActionCount"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7175
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7176
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v5

    if-ne v0, v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v4

    .line 7177
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    const-string v6, "android.rebuild.bigViewActionCount"

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7178
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7179
    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v7

    if-ne v5, v7, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v4

    .line 7180
    :goto_1
    iget-object v7, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v7, v7, Landroid/app/Notification$BuilderRemoteViews;

    const-string v8, "android.rebuild.hudViewActionCount"

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7181
    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7182
    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v7

    if-ne v3, v7, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    if-nez v0, :cond_4

    if-nez v5, :cond_4

    if-nez v2, :cond_4

    return-object p0

    .line 7189
    :cond_4
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 7191
    iput-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7192
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    if-eqz v5, :cond_6

    .line 7195
    iput-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7196
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 7199
    iput-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7200
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    return-object p0
.end method

.method private minimallyDecoratedBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4

    .line 6395
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 6396
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 6397
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6398
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6399
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 6400
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6402
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->access$2400(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6404
    invoke-static {v2}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-object v2
.end method

.method private minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4

    .line 6383
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 6384
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 6385
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6386
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6387
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 6388
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6389
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->access$2400(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-object v2
.end method

.method private minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 4

    .line 6410
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 6411
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 6412
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6413
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6414
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 6415
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6417
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->access$2400(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-object v2
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 6955
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6956
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6958
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    const p3, 0x1020006

    const-string/jumbo v0, "setOriginalIconColor"

    .line 6959
    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 6927
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 6929
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/ContrastColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 4

    .line 6940
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    .line 6941
    :goto_1
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6943
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p3

    const v2, 0x1020006

    const-string/jumbo v3, "setBackgroundColor"

    .line 6942
    invoke-virtual {p2, v2, v3, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    const-string/jumbo p1, "setOriginalIconColor"

    .line 6944
    invoke-virtual {p2, v2, p1, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 5786
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    if-eqz v0, :cond_0

    .line 5787
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 3

    .line 7018
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 7023
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7026
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7033
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-object v0
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 4

    const v0, 0x1020319

    const-string/jumbo v1, "setExpanded"

    const/4 v2, 0x0

    .line 5713
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const v0, 0x1020259

    const/16 v1, 0x8

    .line 5714
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v3, 0x0

    .line 5715
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x10202ae

    .line 5716
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x1020372

    .line 5717
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5718
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x1020374

    .line 5719
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5720
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x1020373

    .line 5721
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x1020375

    .line 5722
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x102057a

    .line 5723
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x1020576

    .line 5724
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x102048f

    .line 5725
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5726
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5727
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1, v2}, Landroid/app/Notification;->access$1802(Landroid/app/Notification;Z)Z

    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 5699
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    const v0, 0x10204c7

    const/16 v1, 0x8

    .line 5700
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x1020016

    .line 5701
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v2, 0x0

    .line 5702
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x1020558

    .line 5703
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5704
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3

    const v0, 0x1020230

    const/16 v1, 0x8

    .line 6179
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6180
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v0, 0x1020438

    .line 6182
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x102043a

    const/4 v2, 0x0

    .line 6183
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x102043b

    .line 6184
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x1020439

    .line 6185
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x102043c

    .line 6187
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6188
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x102043d

    .line 6189
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6190
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x1020432

    const/4 v1, 0x3

    const v2, 0x10501e3

    .line 6193
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    return-void
.end method

.method private sanitizeColor()V
    .locals 3

    .line 6964
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    .line 6965
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    :cond_0
    return-void
.end method

.method private static setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .locals 1

    .line 5773
    iget-boolean p1, p1, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x10501fe

    goto :goto_0

    :cond_1
    const p1, 0x10501fd

    :goto_0
    const/4 p2, 0x1

    const v0, 0x1020435

    .line 5779
    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    const/4 p2, 0x3

    .line 5781
    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    return-void
.end method

.method private setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 0

    .line 5794
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method private setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .locals 0

    .line 5819
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

    .line 6173
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private styleDisplaysCustomViewInline()Z
    .locals 1

    .line 7141
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private textColorsNeedInversion()Z
    .locals 3

    .line 7259
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-class v2, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7262
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private updateBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 2

    .line 5829
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    const v1, 0x102053b

    if-eqz v0, :cond_0

    .line 5831
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p2

    const-string/jumbo v0, "setBackgroundColor"

    .line 5830
    invoke-virtual {p1, v1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const-string/jumbo v0, "setBackgroundResource"

    .line 5834
    invoke-virtual {p1, v1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private useExistingRemoteView(Landroid/widget/RemoteViews;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 6453
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 6457
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6458
    invoke-static {}, Landroid/app/Notification;->access$1900()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Notification"

    const-string v1, "For apps targeting S, a custom content view that is a modified version of any standard layout is disallowed."

    .line 6462
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addAction(IILjava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 6

    .line 5440
    iget-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance p2, Landroid/app/Notification$Action;

    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;IILandroid/app/PendingIntent;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5417
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5497
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 9

    .line 5434
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/Notification$Action;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;IILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 8

    .line 5428
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/Notification$Action;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 2

    .line 5422
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5345
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public addLiveItemAction(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 2

    .line 5446
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/app/Notification$Action;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLiveItemAction(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/ArrayList;)Landroid/app/Notification$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$LiveItemAction;",
            ">;)",
            "Landroid/app/Notification$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 5468
    invoke-static {p3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p3

    move-object v5, p3

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz p4, :cond_1

    .line 5469
    invoke-static {p4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_1
    move-object v6, v0

    if-eqz p5, :cond_2

    .line 5471
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p3, 0x0

    .line 5472
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Notification$LiveItemAction;

    invoke-virtual {p3}, Landroid/app/Notification$LiveItemAction;->getActionName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    const-string p3, ""

    :goto_1
    move-object v4, p3

    .line 5474
    iget-object p3, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance p4, Landroid/app/Notification$Action;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/Notification$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/util/ArrayList;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addLiveItemAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 12

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5452
    iget-object v4, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 5453
    iget-object v1, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    :cond_1
    move-object v9, v3

    .line 5454
    iget-object v1, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Notification$Action;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Landroid/app/Notification$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addLiveItemAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 11

    move-object v0, p0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 5460
    invoke-static {p4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    if-eqz p5, :cond_1

    .line 5461
    invoke-static/range {p5 .. p5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    :cond_1
    move-object v8, v1

    .line 5462
    iget-object v1, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Notification$Action;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Landroid/app/Notification$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;
    .locals 1

    .line 5282
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 5256
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 6

    .line 7069
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$700(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 7070
    invoke-static {v0}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 7071
    invoke-static {v0}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 7072
    invoke-static {v0}, Landroid/app/Notification;->access$700(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7073
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification and BubbleMetadata shortcut id\'s don\'t match, notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 7075
    invoke-static {v2}, Landroid/app/Notification;->access$700(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs bubble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 7076
    invoke-static {v2}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7080
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 7081
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7084
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->creationTime:J

    .line 7087
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 7089
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 7091
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_3

    .line 7092
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 7093
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 7094
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 7095
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 7097
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 7099
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_7

    .line 7100
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7101
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7102
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7103
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4

    .line 7105
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7106
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7107
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    const-string v5, "android.rebuild.contentViewActionCount"

    .line 7106
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    if-nez v1, :cond_5

    .line 7110
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7112
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7113
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    const-string v5, "android.rebuild.bigViewActionCount"

    .line 7112
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    if-nez v2, :cond_6

    .line 7117
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 7119
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7120
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    const-string v5, "android.rebuild.hudViewActionCount"

    .line 7119
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7126
    :cond_6
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7127
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7128
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7131
    :cond_7
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 7132
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 7135
    :cond_8
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 7137
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2

    .line 7151
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 3

    .line 6996
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6997
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 6998
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7000
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7001
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    const-string v2, "android.people.list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7003
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 7005
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "android.contains.customView"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7007
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 4

    .line 6474
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6475
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6476
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :goto_0
    return-object v0

    .line 6478
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6479
    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6480
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6481
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 6485
    invoke-direct {p0}, Landroid/app/Notification$Builder;->bigContentViewRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6486
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 6487
    invoke-virtual {v0, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6488
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6489
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6490
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6494
    :cond_4
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    .line 6363
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Z)Landroid/widget/RemoteViews;
    .locals 2

    .line 6433
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 6434
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6435
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_0
    return-object p1

    .line 6436
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_3

    .line 6437
    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 6439
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6440
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    :cond_2
    return-object p1

    .line 6443
    :cond_3
    iget-object p1, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {p1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 6444
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 6445
    invoke-virtual {p1, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 6446
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    .line 6607
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 3

    .line 6579
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 6580
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6581
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_0

    .line 6582
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :goto_0
    return-object p1

    .line 6583
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6584
    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6586
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6587
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    :cond_2
    return-object p1

    .line 6589
    :cond_3
    iget-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    return-object v1

    .line 6595
    :cond_4
    iget-object p1, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {p1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 6596
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 6597
    invoke-virtual {p1, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 6598
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 6599
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0, p1, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0

    .line 5588
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 5381
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;
    .locals 1

    .line 7276
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 7277
    invoke-virtual {v0}, Landroid/app/Notification$Style;->getHeadsUpStatusBarText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 7278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 7282
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7051
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    .line 5804
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getPrimaryTextColor()I

    move-result p1

    return p1
.end method

.method public getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .locals 0

    .line 5814
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Colors;->getSecondaryTextColor()I

    move-result p1

    return p1
.end method

.method public getStyle()Landroid/app/Notification$Style;
    .locals 1

    .line 5551
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 7

    .line 6085
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6086
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.substName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 6091
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6092
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    .line 6093
    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 6097
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warning: pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " attempting to substitute app name \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' without holding perm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v3

    .line 6103
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6104
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6106
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v3

    .line 6111
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeAmbientNotification()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    .line 6550
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 6554
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .locals 3

    .line 6669
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    .line 6670
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 6671
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6672
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 6673
    iget-object p1, v0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6674
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 6676
    :cond_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p1

    const v0, 0x1020434

    const-string/jumbo v1, "setAcceptAllTouches"

    const/4 v2, 0x1

    .line 6677
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const-string/jumbo v1, "styleTextAsTitle"

    .line 6679
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-object p1
.end method

.method public makeNotificationGroupHeader()Landroid/widget/RemoteViews;
    .locals 2

    .line 6523
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    .line 6524
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6525
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6523
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makePublicContentView(Z)Landroid/widget/RemoteViews;
    .locals 8

    .line 6618
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 6619
    iget-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {p1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 6620
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 6622
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6623
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v2, 0x0

    .line 6624
    iput-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6625
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v3}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 6626
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4, v2}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 6627
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 6628
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 6629
    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6630
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6631
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "android.showWhen"

    .line 6633
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 6632
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "android.showChronometer"

    .line 6635
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 6634
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "android.chronometerCountDown"

    .line 6637
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 6636
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "android.substName"

    .line 6638
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6640
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6642
    :cond_1
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6644
    iget-object v5, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v5}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    sget v6, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    .line 6645
    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 6646
    invoke-virtual {v5, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 6648
    invoke-virtual {v5, p1}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 6650
    :cond_2
    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p1

    const v5, 0x1020434

    const/4 v6, 0x1

    const-string/jumbo v7, "setExpandOnlyOnButton"

    .line 6651
    invoke-virtual {p1, v5, v7, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6652
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6653
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v3}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 6654
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 6655
    iput-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6656
    iput-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object p1
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3

    .line 5519
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 5520
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 5521
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 5522
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;
    .locals 1

    .line 7042
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$2602(Landroid/app/Notification;Z)Z

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4247
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x10

    .line 5170
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setBadgeIconType(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 4464
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$902(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4497
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    return-object p0
.end method

.method public setCallBackArgs(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4252
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setCallBackArgs"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 5224
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setCenterHorizontally(Z)V
    .locals 2

    .line 4661
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setCenterHorizontally"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4504
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4513
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4592
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setClearFlag(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 4216
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->clearFlag:I

    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 5619
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 5620
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    return-object p0
.end method

.method public setColorized(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 5121
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4846
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4822
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "android.infoText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4904
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4679
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "android.text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4670
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "android.title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4869
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4857
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4881
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5201
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4915
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDisplayFlag(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 4211
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->displayFlag:I

    return-object p0
.end method

.method public setEffectiveTime(J)Landroid/app/Notification$Builder;
    .locals 2

    .line 4317
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setEffectiveTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 5365
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 5603
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 5605
    :cond_0
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-object p0
.end method

.method public setFoldToMsgCenter(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4382
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "foldToMsgCenter"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 5159
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1502(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1

    .line 4944
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/16 p1, 0x80

    .line 4945
    invoke-virtual {p0, p1, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 5299
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 4480
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1002(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x200

    .line 5313
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setHideSmartReplies(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4796
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.hideSmartReplies"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 4980
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4992
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4993
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setLevelControl(I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4267
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setLevelControl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5074
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 5075
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->ledOnMS:I

    .line 5076
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, p1, Landroid/app/Notification;->ledOffMS:I

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 5078
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroid/app/Notification;->flags:I

    :cond_1
    return-object p0
.end method

.method public setLiveItemMode(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4262
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setLiveItemMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setLiveStatusbarStyle(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4346
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setLiveStatusbarStyle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setLiveStatusbarText(Landroid/app/Notification$StatusBarStyle;)Landroid/app/Notification$Builder;
    .locals 3

    .line 4337
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$StatusBarStyle;->text:Ljava/lang/String;

    const-string/jumbo v2, "setLiveStatusbarText"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget v1, p1, Landroid/app/Notification$StatusBarStyle;->textColor:I

    const-string/jumbo v2, "setLiveStatusbarTextColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4339
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget v1, p1, Landroid/app/Notification$StatusBarStyle;->bgColor:I

    const-string/jumbo v2, "setLiveStatusbarBgColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4340
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$StatusBarStyle;->textColorName:Ljava/lang/String;

    const-string/jumbo v2, "setLiveStatusbarTextColorName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4341
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/app/Notification$StatusBarStyle;->bgColorName:Ljava/lang/String;

    const-string/jumbo v1, "setLiveStatusbarBgColorName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLiveStatusbarText(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4332
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setLiveStatusbarText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x100

    .line 5182
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setLocusId(Landroid/content/LocusId;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4450
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$802(Landroid/app/Notification;Landroid/content/LocusId;)Landroid/content/LocusId;

    return-object p0
.end method

.method public setMajorPriority(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 4206
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->majorPriority:I

    return-object p0
.end method

.method public setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4223
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "majorType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMsgMajorPriority(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 4228
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->msgMajorPriority:I

    return-object p0
.end method

.method public setMsgTmp(I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4307
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setMsgTmp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setNotificationLevel(I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4272
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setNotificationLevel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 4806
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 5100
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x8

    .line 5133
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5213
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2

    .line 4833
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4834
    iget-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.progressMax"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4835
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p2, "android.progressIndeterminate"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 5574
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 5575
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    goto :goto_0

    .line 5577
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    :goto_0
    return-object p0
.end method

.method public setRemoteInputHistory([Landroid/app/RemoteInputHistoryItem;)Landroid/app/Notification$Builder;
    .locals 5

    const-string v0, "android.remoteInputHistoryItems"

    if-nez p1, :cond_0

    .line 4768
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    .line 4770
    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4771
    new-array v2, v1, [Landroid/app/RemoteInputHistoryItem;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4773
    aget-object v4, p1, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4775
    :cond_1
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_1
    return-object p0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 7

    const-string v0, "android.remoteInputHistory"

    if-nez p1, :cond_0

    .line 4743
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    .line 4745
    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4746
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 4747
    new-array v3, v1, [Landroid/app/RemoteInputHistoryItem;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 4749
    aget-object v5, p1, v4

    invoke-static {v5}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v4

    .line 4750
    new-instance v5, Landroid/app/RemoteInputHistoryItem;

    aget-object v6, p1, v4

    invoke-direct {v5, v6}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/CharSequence;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4752
    :cond_1
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4755
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.remoteInputHistoryItems"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :goto_1
    return-object p0
.end method

.method public setRightIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 7

    .line 5505
    new-instance v6, Landroid/app/Notification$Action;

    const-string v3, ""

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)V

    .line 5506
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo p2, "rightIconAction"

    invoke-virtual {p1, p2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4722
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1302(Landroid/app/Notification;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4437
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$702(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setShowLong(I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4282
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setShowLong"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4786
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputSpinner"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setShowSmallIcon(Z)V
    .locals 2

    .line 4653
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setShowSmallIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowTime(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4257
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setShowTime"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setShowTimeStyle(I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4287
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setShowTimeStyle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setShowWarning(Z)V
    .locals 2

    .line 4657
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setShowWarning"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4557
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4613
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4612
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1

    .line 4630
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 4631
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4644
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    if-eqz p1, :cond_0

    .line 4645
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4646
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p1

    iput p1, v0, Landroid/app/Notification;->icon:I

    :cond_0
    return-object p0
.end method

.method public setSmallIconDiy(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4351
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSmallIconDiy"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 5331
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1702(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5007
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5008
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Notification"

    const-string/jumbo v1, "setSound()"

    .line 5021
    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 5022
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5023
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5036
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5037
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setSoundLoop(I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4327
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSoundLoop"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSoundPlayTime(I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4322
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSoundPlayTime"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSpeechActionCard(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4366
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSpeechActionCard"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSpeechArea([I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4292
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSpeechArea"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public setSpeechBotOpen(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4361
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSpeechBotOpen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSpeechWordListForActionOne([Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4297
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSpeechWordListOne"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public setSpeechWordListForActionTwo([Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4302
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSpeechWordListTwo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 2

    .line 5535
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_1

    .line 5536
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const-string v0, "android.template"

    if-eqz p1, :cond_0

    .line 5538
    invoke-virtual {p1, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 5539
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5541
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4703
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "android.subText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setSystemMsg(I)Landroid/app/Notification$Builder;
    .locals 2

    .line 4312
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setSystemMsg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1

    .line 4956
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4966
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setTimeout(J)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4520
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$1202(Landroid/app/Notification;J)J

    return-object p0
.end method

.method public setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .locals 1

    .line 4530
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$1202(Landroid/app/Notification;J)J

    return-object p0
.end method

.method public setTipSoundClose(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4371
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setTipSoundClose"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setTipSoundLoop(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4376
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setTipSoundLoop"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setTtsOpen(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4356
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setTtsOpen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setTtsText(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 4277
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setTtsText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2

    .line 4578
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5056
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;
    .locals 3

    .line 4233
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p1, Landroid/app/Notification$ViewStyle;->style:I

    iput v1, v0, Landroid/app/Notification;->viewStyle:I

    .line 4234
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$ViewStyle;->bigPictureDay:Landroid/graphics/Bitmap;

    const-string v2, "bigPictureDay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4235
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$ViewStyle;->bigPictureNight:Landroid/graphics/Bitmap;

    const-string v2, "bigPictureNight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4236
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$ViewStyle;->iconDay:Landroid/graphics/Bitmap;

    const-string v2, "bigIconDay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4237
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$ViewStyle;->iconNight:Landroid/graphics/Bitmap;

    const-string v2, "bigIconNight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4238
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$ViewStyle;->bigPictureDayUrl:Ljava/lang/String;

    const-string v2, "bigPictureDayUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$ViewStyle;->bigPictureNightUrl:Ljava/lang/String;

    const-string v2, "bigPictureNightUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4240
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$ViewStyle;->iconDayUrl:Ljava/lang/String;

    const-string v2, "bigIconDayUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4241
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/app/Notification$ViewStyle;->iconNightUrl:Ljava/lang/String;

    const-string v2, "bigIconNightUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4242
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget p1, p1, Landroid/app/Notification$ViewStyle;->titleGravity:I

    const-string v1, "bigPtTtGravity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1

    .line 5561
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1

    .line 4545
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public usesStandardHeader()Z
    .locals 5

    .line 5683
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1800(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5686
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 5687
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    return v1

    .line 5691
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 5692
    invoke-static {}, Landroid/app/Notification;->access$1900()Landroid/util/ArraySet;

    move-result-object v0

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 5693
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_5

    .line 5694
    invoke-static {}, Landroid/app/Notification;->access$1900()Landroid/util/ArraySet;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v1

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method

.method public usesTemplate()Z
    .locals 1

    .line 7291
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 7293
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
