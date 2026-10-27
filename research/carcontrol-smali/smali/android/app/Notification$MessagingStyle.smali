.class public Landroid/app/Notification$MessagingStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MessagingStyle$Message;,
        Landroid/app/Notification$MessagingStyle$ConversationType;
    }
.end annotation


# static fields
.field public static final CONVERSATION_TYPE_IMPORTANT:I = 0x2

.field public static final CONVERSATION_TYPE_LEGACY:I = 0x0

.field public static final CONVERSATION_TYPE_NORMAL:I = 0x1

.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field mConversationTitle:Ljava/lang/CharSequence;

.field mConversationType:I

.field mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mIsGroupConversation:Z

.field mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mShortcutIcon:Landroid/graphics/drawable/Icon;

.field mUnreadMessageCount:I

.field mUser:Landroid/app/Person;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8345
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v0, 0x0

    .line 8342
    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Person;)V
    .locals 1

    .line 8367
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v0, 0x0

    .line 8342
    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 8368
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 8357
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    return-void
.end method

.method private findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 1

    .line 8782
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public static findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Landroid/app/Notification$MessagingStyle$Message;"
        }
    .end annotation

    .line 8791
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 8792
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 8794
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->access$4000(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->access$4000(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8798
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8800
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle$Message;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .locals 8

    .line 8663
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 8664
    :cond_0
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->access$3900(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    .line 8666
    :cond_1
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->access$4000(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->access$4000(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8667
    :cond_2
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->access$4000(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :goto_2
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 8669
    :goto_3
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8670
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8671
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 8672
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10405c6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8674
    invoke-virtual {v0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v5, v6

    .line 8672
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 8676
    :cond_4
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    const-string v0, "android.title"

    .line 8683
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v2, :cond_7

    const-string v0, "android.text"

    .line 8686
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method private getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8912
    :cond_0
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getOtherPersonName()Ljava/lang/CharSequence;
    .locals 4

    .line 8916
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8917
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 8918
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8919
    invoke-direct {p0, v2}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8920
    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasOnlyWhiteSpaceSenders()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 8927
    :goto_0
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8928
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 8929
    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8930
    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/Notification$MessagingStyle;->isWhiteSpace(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 8938
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 8941
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "^\\s*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 8946
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 8947
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x200b

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private makeMessagingView(I)Landroid/widget/RemoteViews;
    .locals 14

    .line 8822
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 8823
    :goto_0
    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    if-eq p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 8824
    :goto_1
    iget v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-eqz v4, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    if-nez v5, :cond_4

    if-eqz v0, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v1

    .line 8828
    :goto_4
    invoke-static {p0}, Landroid/app/Notification$Style;->access$3700(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 8829
    invoke-static {p0}, Landroid/app/Notification$Style;->access$3700(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_5

    .line 8830
    :cond_5
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8831
    :goto_5
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    move v8, v1

    :goto_6
    const/4 v9, 0x0

    if-nez v8, :cond_8

    .line 8836
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 8837
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v2

    move-object v8, v7

    move-object v7, v9

    goto :goto_8

    :cond_7
    :goto_7
    move v10, v8

    move-object v8, v9

    goto :goto_8

    .line 8843
    :cond_8
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->isGroupConversation()Z

    move-result v8

    xor-int/2addr v8, v2

    goto :goto_7

    :goto_8
    if-eqz v6, :cond_9

    if-eqz v10, :cond_9

    .line 8845
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 8846
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->getOtherPersonName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 8849
    :cond_9
    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v11}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v11

    invoke-static {v11}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 8850
    new-instance v12, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v12, v9}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 8851
    iget-object v13, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v13, v13, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v13}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v13

    .line 8852
    invoke-virtual {v13, p1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 8853
    invoke-virtual {p1, v5}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 8854
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    if-eqz v6, :cond_a

    move-object v13, v7

    goto :goto_9

    :cond_a
    move-object v13, v9

    .line 8855
    :goto_9
    invoke-virtual {p1, v13}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 8856
    invoke-virtual {p1, v9}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 8857
    invoke-virtual {p1, v10}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    if-nez v3, :cond_b

    if-eqz v10, :cond_c

    :cond_b
    move v1, v2

    .line 8858
    :cond_c
    invoke-virtual {p1, v1}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    if-eqz v6, :cond_d

    goto :goto_a

    :cond_d
    move-object v9, v7

    .line 8859
    :goto_a
    invoke-virtual {p1, v9}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 8860
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v5, :cond_e

    .line 8862
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$4100(Landroid/app/Notification$Builder;)I

    move-result v3

    goto :goto_b

    :cond_e
    if-eqz v0, :cond_f

    .line 8864
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$4200(Landroid/app/Notification$Builder;)I

    move-result v3

    goto :goto_b

    .line 8865
    :cond_f
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$4300(Landroid/app/Notification$Builder;)I

    move-result v3

    .line 8860
    :goto_b
    invoke-static {v1, v3, p1, v12}, Landroid/app/Notification$Builder;->access$2800(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v5, :cond_10

    .line 8869
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v9, 0x10202e3

    invoke-static {v3, v1, v9, p1}, Landroid/app/Notification$Builder;->access$4400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 8870
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v9, 0x1020258

    invoke-static {v3, v1, v9, p1}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 8873
    :cond_10
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Landroid/app/Notification$MessagingStyle;->addExtras(Landroid/os/Bundle;)V

    .line 8874
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8875
    invoke-static {v3, p1}, Landroid/app/Notification$Builder;->access$4500(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    const v9, 0x102053b

    const-string/jumbo v12, "setLayoutColor"

    .line 8874
    invoke-virtual {v1, v9, v12, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8876
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8877
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    const-string/jumbo v12, "setSenderTextColor"

    .line 8876
    invoke-virtual {v1, v9, v12, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8878
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8879
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    const-string/jumbo v12, "setMessageTextColor"

    .line 8878
    invoke-virtual {v1, v9, v12, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8880
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8882
    invoke-static {v3, p1}, Landroid/app/Notification$Builder;->access$4600(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    const-string/jumbo v3, "setNotificationBackgroundColor"

    .line 8880
    invoke-virtual {v1, v9, v3, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo p1, "setIsCollapsed"

    .line 8883
    invoke-virtual {v1, v9, p1, v0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 8885
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8886
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    invoke-static {p1}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    const-string/jumbo v0, "setAvatarReplacement"

    .line 8885
    invoke-virtual {v1, v9, v0, p1}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    const-string/jumbo p1, "setNameReplacement"

    .line 8887
    invoke-virtual {v1, v9, p1, v8}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "setIsOneToOne"

    .line 8889
    invoke-virtual {v1, v9, p1, v10}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const-string/jumbo p1, "setConversationTitle"

    .line 8891
    invoke-virtual {v1, v9, p1, v7}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_11

    .line 8894
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    const-string/jumbo v0, "setShortcutIcon"

    invoke-virtual {v1, v9, v0, p1}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    const-string/jumbo p1, "setIsImportantConversation"

    .line 8896
    invoke-virtual {v1, v9, p1, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    :cond_11
    if-eqz v6, :cond_12

    const p1, 0x102043f

    const-string/jumbo v0, "setMaxDisplayedLines"

    .line 8901
    invoke-virtual {v1, p1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_12
    const-string/jumbo p1, "setLargeIcon"

    .line 8903
    invoke-virtual {v1, v9, p1, v11}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 8905
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8906
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v0, "setData"

    .line 8905
    invoke-virtual {v1, v9, v0, p1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 8638
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 8639
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_0

    .line 8641
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.selfDisplayName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8642
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    const-string v1, "android.messagingUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8644
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v1, "android.conversationTitle"

    .line 8645
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8647
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8648
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messages"

    .line 8647
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 8650
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8651
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messages.historic"

    .line 8650
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 8653
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_4

    const-string v1, "android.conversationIcon"

    .line 8654
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8656
    :cond_4
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    const-string v1, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8658
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 8659
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    const-string v1, "android.isGroupConversation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 1

    .line 8573
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8574
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    .line 8575
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 1

    .line 8552
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8553
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    .line 8554
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;
    .locals 1

    .line 8539
    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object p1

    return-object p1
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 1

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 8521
    :cond_0
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p4

    .line 8520
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;

    move-result-object p1

    return-object p1
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 8733
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    .line 8736
    :cond_0
    check-cast p1, Landroid/app/Notification$MessagingStyle;

    .line 8737
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 8738
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p1

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    .line 8741
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8744
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 8745
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_c

    .line 8749
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    .line 8750
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 8752
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 8753
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 8751
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    return v0

    .line 8756
    :cond_4
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    return v0

    .line 8759
    :cond_5
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    if-nez v7, :cond_6

    .line 8760
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 8761
    :cond_6
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 8759
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 8762
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    if-nez v8, :cond_7

    .line 8763
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_2

    .line 8764
    :cond_7
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 8762
    :goto_2
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 8765
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    return v0

    .line 8769
    :cond_8
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_9

    move-object v5, v8

    goto :goto_3

    .line 8770
    :cond_9
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 8771
    :goto_3
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    if-nez v7, :cond_a

    goto :goto_4

    .line 8772
    :cond_a
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 8773
    :goto_4
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    return v0

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    return v3

    :cond_d
    :goto_5
    return v0
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 8448
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    .line 8488
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    return v0
.end method

.method public getHeadsUpStatusBarText()Ljava/lang/CharSequence;
    .locals 2

    .line 8392
    invoke-static {p0}, Landroid/app/Notification$Style;->access$3700(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8393
    invoke-static {p0}, Landroid/app/Notification$Style;->access$3700(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 8394
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8395
    :goto_0
    iget v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-nez v1, :cond_1

    .line 8396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHistoricMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 8591
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 8584
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getShortcutIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 8469
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .line 8493
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    return v0
.end method

.method public getUser()Landroid/app/Person;
    .locals 1

    .line 8407
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .line 8416
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isGroupConversation()Z
    .locals 2

    .line 8624
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8625
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 8627
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 8630
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 8810
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 2

    .line 8718
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object p1

    .line 8720
    :try_start_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$3502(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8721
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8723
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/app/Notification$Builder;->access$3502(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/app/Notification$Builder;->access$3502(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 8724
    throw v0
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 0

    .line 8960
    sget p1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 8695
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.messagingUser"

    .line 8697
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-nez v0, :cond_0

    const-string v0, "android.selfDisplayName"

    .line 8699
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8700
    new-instance v1, Landroid/app/Person$Builder;

    invoke-direct {v1}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :cond_0
    const-string v0, "android.conversationTitle"

    .line 8702
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    const-string v0, "android.messages"

    .line 8703
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 8704
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const-string v0, "android.messages.historic"

    .line 8705
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 8706
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const-string v0, "android.isGroupConversation"

    .line 8707
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    const-string v0, "android.conversationUnreadMessageCount"

    .line 8708
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    const-string v0, "android.conversationIcon"

    .line 8709
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 0

    .line 8439
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConversationType(I)Landroid/app/Notification$MessagingStyle;
    .locals 0

    .line 8481
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    return-object p0
.end method

.method public setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;
    .locals 0

    .line 8604
    iput-boolean p1, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return-object p0
.end method

.method public setShortcutIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$MessagingStyle;
    .locals 0

    .line 8457
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setUnreadMessageCount(I)Landroid/app/Notification$MessagingStyle;
    .locals 0

    .line 8498
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    return-object p0
.end method

.method public validate(Landroid/content/Context;)V
    .locals 1

    .line 8377
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 8378
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz p1, :cond_0

    .line 8379
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8380
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "User must be valid and have a name."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
