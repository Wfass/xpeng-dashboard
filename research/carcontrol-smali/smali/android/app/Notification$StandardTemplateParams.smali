.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# static fields
.field public static final DECORATION_MINIMAL:I = 0x1

.field public static final DECORATION_PARTIAL:I = 0x2

.field public static VIEW_TYPE_BIG:I = 0x2

.field public static VIEW_TYPE_GROUP_HEADER:I = 0x6

.field public static VIEW_TYPE_HEADS_UP:I = 0x3

.field public static VIEW_TYPE_MINIMIZED:I = 0x4

.field public static VIEW_TYPE_NORMAL:I = 0x1

.field public static VIEW_TYPE_PUBLIC:I = 0x5

.field public static VIEW_TYPE_UNSPECIFIED:I


# instance fields
.field allowColorization:Z

.field headerTextSecondary:Ljava/lang/CharSequence;

.field mAllowTextWithProgress:Z

.field mCallStyleActions:Z

.field mHeaderless:Z

.field mHideActions:Z

.field mHideAppName:Z

.field mHideLeftIcon:Z

.field mHideProgress:Z

.field mHideRightIcon:Z

.field mHideSnoozeButton:Z

.field mHideSubText:Z

.field mHideTime:Z

.field mHideTitle:Z

.field mHighlightExpander:Z

.field mPromotedPicture:Landroid/graphics/drawable/Icon;

.field mTextViewId:I

.field mTitleViewId:I

.field mViewType:I

.field maxRemoteInputHistory:I

.field summaryText:Ljava/lang/CharSequence;

.field text:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12755
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    const/4 v0, 0x3

    .line 12775
    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    const/4 v0, 0x1

    .line 12776
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    const/4 v0, 0x0

    .line 12777
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$1;)V
    .locals 0

    .line 12730
    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12856
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    return-object p0
.end method

.method final callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12851
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    return-object p0
.end method

.method public decorationType(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 2

    const/4 v0, 0x1

    .line 12940
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 12944
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12945
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12946
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12947
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideActions(Z)Landroid/app/Notification$StandardTemplateParams;

    return-object p0
.end method

.method final disallowColorization()Landroid/app/Notification$StandardTemplateParams;
    .locals 1

    const/4 v0, 0x0

    .line 12912
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    return-object p0
.end method

.method final fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .locals 2

    .line 12922
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    .line 12923
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->access$3200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    const-string v1, "android.text"

    .line 12924
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->access$3200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    const-string p1, "android.subText"

    .line 12925
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final hasTitle()Z
    .locals 1

    .line 12807
    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12896
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public headerless(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12816
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    return-object p0
.end method

.method final hideActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12836
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    return-object p0
.end method

.method public hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12821
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    return-object p0
.end method

.method final hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12902
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    return-object p0
.end method

.method final hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12841
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    return-object p0
.end method

.method final hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12907
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    return-object p0
.end method

.method final hideSnoozeButton(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12861
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    return-object p0
.end method

.method public hideSubText(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12826
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    return-object p0
.end method

.method public hideTime(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12831
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    return-object p0
.end method

.method final hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12846
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    return-object p0
.end method

.method final highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12917
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-object p0
.end method

.method final promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12866
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method final reset()Landroid/app/Notification$StandardTemplateParams;
    .locals 3

    .line 12780
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    const/4 v0, 0x0

    .line 12781
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 12782
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 12783
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 12784
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 12785
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 12786
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 12787
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 12788
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 12789
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 12790
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    const/4 v1, 0x0

    .line 12791
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 12792
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 12793
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    const v2, 0x1020016

    .line 12794
    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    const v2, 0x1020558

    .line 12795
    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 12796
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 12797
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 12798
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    .line 12799
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    .line 12800
    iput v1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    const/4 v1, 0x1

    .line 12801
    iput-boolean v1, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12802
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-object p0
.end method

.method public setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12935
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    return-object p0
.end method

.method final summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12891
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12886
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public textViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12876
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    return-object p0
.end method

.method final title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12881
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public titleViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12871
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    return-object p0
.end method

.method final viewType(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0

    .line 12811
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    return-object p0
.end method
