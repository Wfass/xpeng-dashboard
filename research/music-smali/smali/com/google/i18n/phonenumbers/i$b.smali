.class public Lcom/google/i18n/phonenumbers/i$b;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private carrierSpecific_:Lcom/google/i18n/phonenumbers/i$d;

.field private countryCode_:I

.field private emergency_:Lcom/google/i18n/phonenumbers/i$d;

.field private fixedLine_:Lcom/google/i18n/phonenumbers/i$d;

.field private generalDesc_:Lcom/google/i18n/phonenumbers/i$d;

.field private hasCarrierSpecific:Z

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasMobileNumberPortableRegion:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasShortCode:Z

.field private hasSmsServices:Z

.field private hasStandardRate:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobileNumberPortableRegion_:Z

.field private mobile_:Lcom/google/i18n/phonenumbers/i$d;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lcom/google/i18n/phonenumbers/i$d;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lcom/google/i18n/phonenumbers/i$d;

.field private personalNumber_:Lcom/google/i18n/phonenumbers/i$d;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lcom/google/i18n/phonenumbers/i$d;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lcom/google/i18n/phonenumbers/i$d;

.field private shortCode_:Lcom/google/i18n/phonenumbers/i$d;

.field private smsServices_:Lcom/google/i18n/phonenumbers/i$d;

.field private standardRate_:Lcom/google/i18n/phonenumbers/i$d;

.field private tollFree_:Lcom/google/i18n/phonenumbers/i$d;

.field private uan_:Lcom/google/i18n/phonenumbers/i$d;

.field private voicemail_:Lcom/google/i18n/phonenumbers/i$d;

.field private voip_:Lcom/google/i18n/phonenumbers/i$d;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->generalDesc_:Lcom/google/i18n/phonenumbers/i$d;

    .line 403
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->fixedLine_:Lcom/google/i18n/phonenumbers/i$d;

    .line 417
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->mobile_:Lcom/google/i18n/phonenumbers/i$d;

    .line 431
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->tollFree_:Lcom/google/i18n/phonenumbers/i$d;

    .line 445
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->premiumRate_:Lcom/google/i18n/phonenumbers/i$d;

    .line 459
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->sharedCost_:Lcom/google/i18n/phonenumbers/i$d;

    .line 473
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->personalNumber_:Lcom/google/i18n/phonenumbers/i$d;

    .line 487
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->voip_:Lcom/google/i18n/phonenumbers/i$d;

    .line 501
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->pager_:Lcom/google/i18n/phonenumbers/i$d;

    .line 515
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->uan_:Lcom/google/i18n/phonenumbers/i$d;

    .line 529
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->emergency_:Lcom/google/i18n/phonenumbers/i$d;

    .line 543
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->voicemail_:Lcom/google/i18n/phonenumbers/i$d;

    .line 557
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->shortCode_:Lcom/google/i18n/phonenumbers/i$d;

    .line 571
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->standardRate_:Lcom/google/i18n/phonenumbers/i$d;

    .line 585
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->carrierSpecific_:Lcom/google/i18n/phonenumbers/i$d;

    .line 599
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->smsServices_:Lcom/google/i18n/phonenumbers/i$d;

    .line 613
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->noInternationalDialling_:Lcom/google/i18n/phonenumbers/i$d;

    const-string v0, ""

    .line 627
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->id_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 638
    iput v1, p0, Lcom/google/i18n/phonenumbers/i$b;->countryCode_:I

    .line 649
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->internationalPrefix_:Ljava/lang/String;

    .line 660
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 676
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefix_:Ljava/lang/String;

    .line 692
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->preferredExtnPrefix_:Ljava/lang/String;

    .line 708
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 719
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 735
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/i$b;->sameMobileAndFixedLinePattern_:Z

    .line 750
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/i$b;->numberFormat_:Ljava/util/List;

    .line 773
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/i$b;->intlNumberFormat_:Ljava/util/List;

    .line 803
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/i$b;->mainCountryForCode_:Z

    .line 822
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->leadingDigits_:Ljava/lang/String;

    .line 833
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/i$b;->leadingZeroPossible_:Z

    .line 849
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/i$b;->mobileNumberPortableRegion_:Z

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 642
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasCountryCode:Z

    .line 643
    iput p1, p0, Lcom/google/i18n/phonenumbers/i$b;->countryCode_:I

    return-object p0
.end method

.method public a(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasGeneralDesc:Z

    .line 397
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->generalDesc_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 394
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 631
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasId:Z

    .line 632
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->id_:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 739
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasSameMobileAndFixedLinePattern:Z

    .line 740
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/i$b;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public a()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->generalDesc_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public b(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 410
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasFixedLine:Z

    .line 411
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->fixedLine_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 408
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 653
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasInternationalPrefix:Z

    .line 654
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->internationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasMainCountryForCode:Z

    .line 811
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/i$b;->mainCountryForCode_:Z

    return-object p0
.end method

.method public b()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->fixedLine_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public c(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasMobile:Z

    .line 425
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->mobile_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 422
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPreferredInternationalPrefix:Z

    .line 665
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 837
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasLeadingZeroPossible:Z

    .line 838
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/i$b;->leadingZeroPossible_:Z

    return-object p0
.end method

.method public c()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->mobile_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public d(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasTollFree:Z

    .line 439
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->tollFree_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 436
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 680
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefix:Z

    .line 681
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 855
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasMobileNumberPortableRegion:Z

    .line 856
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/i$b;->mobileNumberPortableRegion_:Z

    return-object p0
.end method

.method public d()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->tollFree_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public e(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPremiumRate:Z

    .line 453
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->premiumRate_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 450
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public e(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 696
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPreferredExtnPrefix:Z

    .line 697
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->premiumRate_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public f(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasSharedCost:Z

    .line 467
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->sharedCost_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 464
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public f(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefixForParsing:Z

    .line 713
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object p0
.end method

.method public f()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->sharedCost_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public g(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPersonalNumber:Z

    .line 481
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->personalNumber_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 478
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public g(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 723
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefixTransformRule:Z

    .line 724
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->personalNumber_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public h(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasVoip:Z

    .line 495
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->voip_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 492
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public h(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const/4 v0, 0x1

    .line 826
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasLeadingDigits:Z

    .line 827
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->leadingDigits_:Ljava/lang/String;

    return-object p0
.end method

.method public h()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->voip_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public i(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPager:Z

    .line 509
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->pager_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 506
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public i()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->pager_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public j(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasUan:Z

    .line 523
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->uan_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 520
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public j()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->uan_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public k(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasEmergency:Z

    .line 537
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->emergency_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 534
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public k()Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->voicemail_:Lcom/google/i18n/phonenumbers/i$d;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 640
    iget v0, p0, Lcom/google/i18n/phonenumbers/i$b;->countryCode_:I

    return v0
.end method

.method public l(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasVoicemail:Z

    .line 551
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->voicemail_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 548
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public m(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 564
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasShortCode:Z

    .line 565
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->shortCode_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 562
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public n(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasStandardRate:Z

    .line 579
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->standardRate_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 576
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public o(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 592
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasCarrierSpecific:Z

    .line 593
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->carrierSpecific_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 590
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public o()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public p(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasSmsServices:Z

    .line 607
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->smsServices_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 604
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public q(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNoInternationalDialling:Z

    .line 621
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$b;->noInternationalDialling_:Lcom/google/i18n/phonenumbers/i$d;

    return-object p0

    .line 618
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5

    .line 991
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 994
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 995
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->a(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 997
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1000
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1001
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->b(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1003
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1006
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1007
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->c(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1009
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1011
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1012
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1013
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->d(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1015
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1017
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1018
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1019
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->e(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1021
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1023
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1024
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1025
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->f(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1027
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1029
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1030
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1031
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->g(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1033
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1035
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1036
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1037
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->h(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1039
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1041
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1042
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1043
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->i(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1045
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1047
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1048
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1049
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->j(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1051
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1053
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1054
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1055
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->k(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1057
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1059
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1060
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1061
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->l(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1063
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1065
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1066
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1067
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->m(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1069
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1071
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1072
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1073
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->n(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1075
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1077
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1078
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1079
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->o(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1081
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1083
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1084
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1085
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->p(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1087
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1089
    new-instance v0, Lcom/google/i18n/phonenumbers/i$d;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/i$d;-><init>()V

    .line 1090
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->readExternal(Ljava/io/ObjectInput;)V

    .line 1091
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->q(Lcom/google/i18n/phonenumbers/i$d;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1094
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1095
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->a(I)Lcom/google/i18n/phonenumbers/i$b;

    .line 1096
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1098
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1100
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1103
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1105
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1108
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->e(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1113
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1115
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->f(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1118
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1120
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->g(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1123
    :cond_15
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->a(Z)Lcom/google/i18n/phonenumbers/i$b;

    .line 1125
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_16

    .line 1127
    new-instance v3, Lcom/google/i18n/phonenumbers/i$a;

    invoke-direct {v3}, Lcom/google/i18n/phonenumbers/i$a;-><init>()V

    .line 1128
    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/i$a;->readExternal(Ljava/io/ObjectInput;)V

    .line 1129
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/i$b;->numberFormat_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1132
    :cond_16
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_17

    .line 1134
    new-instance v2, Lcom/google/i18n/phonenumbers/i$a;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/i$a;-><init>()V

    .line 1135
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/i$a;->readExternal(Ljava/io/ObjectInput;)V

    .line 1136
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/i$b;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1139
    :cond_17
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->b(Z)Lcom/google/i18n/phonenumbers/i$b;

    .line 1141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->h(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    .line 1146
    :cond_18
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i$b;->c(Z)Lcom/google/i18n/phonenumbers/i$b;

    .line 1148
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/i$b;->d(Z)Lcom/google/i18n/phonenumbers/i$b;

    return-void
.end method

.method public s()Z
    .locals 1

    .line 737
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i$a;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public u()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$b;->v()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i$a;",
            ">;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4

    .line 866
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasGeneralDesc:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 867
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasGeneralDesc:Z

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->generalDesc_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 870
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasFixedLine:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 871
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasFixedLine:Z

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->fixedLine_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 874
    :cond_1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasMobile:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 875
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasMobile:Z

    if-eqz v0, :cond_2

    .line 876
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->mobile_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 878
    :cond_2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasTollFree:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 879
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasTollFree:Z

    if-eqz v0, :cond_3

    .line 880
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->tollFree_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 882
    :cond_3
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPremiumRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 883
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPremiumRate:Z

    if-eqz v0, :cond_4

    .line 884
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->premiumRate_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 886
    :cond_4
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasSharedCost:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 887
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasSharedCost:Z

    if-eqz v0, :cond_5

    .line 888
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->sharedCost_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 890
    :cond_5
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPersonalNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 891
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPersonalNumber:Z

    if-eqz v0, :cond_6

    .line 892
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->personalNumber_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 894
    :cond_6
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasVoip:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 895
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasVoip:Z

    if-eqz v0, :cond_7

    .line 896
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->voip_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 898
    :cond_7
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPager:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 899
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPager:Z

    if-eqz v0, :cond_8

    .line 900
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->pager_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 902
    :cond_8
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasUan:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 903
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasUan:Z

    if-eqz v0, :cond_9

    .line 904
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->uan_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 906
    :cond_9
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasEmergency:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 907
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasEmergency:Z

    if-eqz v0, :cond_a

    .line 908
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->emergency_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 910
    :cond_a
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasVoicemail:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 911
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasVoicemail:Z

    if-eqz v0, :cond_b

    .line 912
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->voicemail_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 914
    :cond_b
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasShortCode:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 915
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasShortCode:Z

    if-eqz v0, :cond_c

    .line 916
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->shortCode_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 918
    :cond_c
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasStandardRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 919
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasStandardRate:Z

    if-eqz v0, :cond_d

    .line 920
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->standardRate_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 922
    :cond_d
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasCarrierSpecific:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 923
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasCarrierSpecific:Z

    if-eqz v0, :cond_e

    .line 924
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->carrierSpecific_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 926
    :cond_e
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasSmsServices:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 927
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasSmsServices:Z

    if-eqz v0, :cond_f

    .line 928
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->smsServices_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 930
    :cond_f
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNoInternationalDialling:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 931
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNoInternationalDialling:Z

    if-eqz v0, :cond_10

    .line 932
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->noInternationalDialling_:Lcom/google/i18n/phonenumbers/i$d;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/i$d;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 935
    :cond_10
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->id_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 936
    iget v0, p0, Lcom/google/i18n/phonenumbers/i$b;->countryCode_:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 937
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 939
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 940
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPreferredInternationalPrefix:Z

    if-eqz v0, :cond_11

    .line 941
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 944
    :cond_11
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 945
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefix:Z

    if-eqz v0, :cond_12

    .line 946
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 949
    :cond_12
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 950
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasPreferredExtnPrefix:Z

    if-eqz v0, :cond_13

    .line 951
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 954
    :cond_13
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 955
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefixForParsing:Z

    if-eqz v0, :cond_14

    .line 956
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 959
    :cond_14
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 960
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasNationalPrefixTransformRule:Z

    if-eqz v0, :cond_15

    .line 961
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 964
    :cond_15
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 966
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$b;->u()I

    move-result v0

    .line 967
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_16

    .line 969
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/i$b;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/i18n/phonenumbers/i$a;

    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/i$a;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 972
    :cond_16
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$b;->x()I

    move-result v0

    .line 973
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_1
    if-ge v1, v0, :cond_17

    .line 975
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$b;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/i18n/phonenumbers/i$a;

    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/i$a;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 978
    :cond_17
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->mainCountryForCode_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 980
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasLeadingDigits:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 981
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasLeadingDigits:Z

    if-eqz v0, :cond_18

    .line 982
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 985
    :cond_18
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->leadingZeroPossible_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 987
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->mobileNumberPortableRegion_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method

.method public x()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 783
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$b;->y()I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$b;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 823
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$b;->hasLeadingDigits:Z

    return v0
.end method
